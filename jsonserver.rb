require 'db.rb'
require 'socket'
require 'cgi'
require 'rubygems'
require 'json'

class JsonServer

    def initialize db, player, port
        @db = db
        @player = player
        puts "Opening webserver at #{port}"
        @server = TCPServer.open(port)

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

            connection.print "HTTP/1.1 200 OK\r\nContent-type: application/json\r\n\r\n"

            if params
                if params.include?("order")
                    sid = params["order"].join(" ").to_i
                    song = @db.lookup(sid)
                    if song
                        @player.queue(song)
                    end
                    connection.print"Ordered #{song.to_s}<br />\r\n"

                elsif params.include?("terms")
                    terms = params["terms"].join(" ")

                    puts "Searching for " + terms
                    songHashList = []
                    myresults = @db.search(terms)
                    myresults.each do |song|
                        songHashList.push({"title" => song.to_s.gsub(/ - /, "\n"), "id" => song.sid.to_s })
                    end
                    result = { "songs" => songHashList }
                    connection.puts(result.to_json)
                elsif params.include?("status")
                    result = { 
                        "now_playing" => @player.now_playing.to_s.gsub(/ - /, "\n"),
                        "next_song" => @player.next_song.to_s.gsub(/ - /, "\n"),
                        "queue_size" => @player.queue_size
                    }
                    connection.puts(result.to_json)
                elsif params.include?( "mic_up")
                    @player.change_sound(:Mic_up)
                    connection.puts({"result" => "ok"}.to_json)
                elsif params.include?( "mic_down")
                    @player.change_sound(:Mic_down)
                    connection.puts({"result" => "ok"}.to_json)
                elsif params.include?( "music_up")
                    @player.change_sound(:Music_up)
                    connection.puts({"result" => "ok"}.to_json)
                elsif params.include?( "music_down")
                    @player.change_sound(:Music_down)
                    connection.puts({"result" => "ok"}.to_json)
                elsif params.include?( "pitch_up")
                    @player.change_sound(:Pitch_up)
                    connection.puts({"result" => "ok"}.to_json)
                elsif params.include?( "pitch_down")
                    @player.change_sound(:Pitch_down)
                    connection.puts({"result" => "ok"}.to_json)

                elsif params.include?("stop")
                    @player.stop
                    connection.puts({"result" => "ok"}.to_json)
                elsif params.include?("restart")
                    @player.restart
                    connection.puts({"result" => "ok"}.to_json)

                end
            end
            connection.close
        end

    end

end


