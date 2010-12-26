require 'db.rb'
require 'socket'
require 'cgi'

class WebServer

    def initialize db, player, port
        @db = db
        @player = player
		puts "Opening webserver at #{port}"
        @server = TCPServer.open(port)

		@sidsongs = {}
		@nextsid = 1

        port = @server.addr[1]
        addrs = @server.addr[2..-1].uniq
        puts "*** initing on #{addrs.collect{|a|"#{a}:#{port}"}.join(' ')}"
	end

	def listen
		while connection = @server.accept
			headers = []
			length  = 0
			params  = nil

			while line = connection.gets
				headers << line

				if line =~ /^Content-Length:\s+(\d+)/i
					length = $1.to_i
				end

				if line =~ /GET \/\?(.+) HTTP/i
					params = CGI::parse($1)
				end

				break if line == "\r\n"
			end

			body = connection.readpartial(length)

			connection.print "HTTP/1.1 200 OK\r\nContent-type: text/html\r\n\r\n"

			connection.print "<html><body><form action=\"/\" method=\"get\"><input type=\"text\" name=terms />"
			connection.print "<input type=\"submit\" value=\"Search\"/></form><br />\r\n"

			if params
				if params.include?("order")
					nr = params["order"].join(" ").to_i
					song = @sidsongs[nr]
					if song
						@player.queue(song)
					end
					connection.print"Ordered #{song.to_s}<br />\r\n"

				elsif params.include?("terms")
					terms = params["terms"].join(" ")

					puts "Searching for " + terms
					myresults = @db.search(terms)
					myresults.each do |song|
						@sidsongs[@nextsid] = song
						connection.print("<a href=\"/?order=#{@nextsid.to_s}\">#{song.to_s}</a><br />\r\n")
						@nextsid += 1
					end
				end
			end

			connection.print "</body></html>\r\n"

			connection.close
		end

	end

end


