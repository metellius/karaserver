require 'db.rb'
require 'socket'

class ClientQuitError < RuntimeError; end


class Server

    def initialize db, player, port
        @db = db
        @player = player
        @server = TCPServer.open(port)

        port = @server.addr[1]
        addrs = @server.addr[2..-1].uniq
        puts "*** initing on #{addrs.collect{|a|"#{a}:#{port}"}.join(' ')}"

    end

    def listen
        puts "*** started accepting"
        loop do
            socket = @server.accept

            Thread.start do # one thread per client
                s = socket

                port = s.peeraddr[1]
                name = s.peeraddr[2]
                addr = s.peeraddr[3]

                puts "*** recieving from #{name}:#{port}"

                myresults = nil

                begin
                    while line = s.gets.chomp # read a line at a time
                        raise ClientQuitError if line =~ /^die\r?$/
                        puts "#{addr} [#{Time.now}]: #{line}"

                        args = line.split(" ")
                        command = args.shift

						puts "client --> " + line

                        case command
                        when "order"
                            id = args[0].to_i
                            puts "order" + id.to_s
                            if myresults != nil
                                thesong = myresults[id]
                                if thesong != nil
                                    @player.queue(thesong)
                                end
                            end
                            s.print("<end>\n")
						when "stop"
							@player.stop
                            s.print("<end>\n")
                        when "restart"
							@player.restart
                            s.print("<end>\n")
						when "mic_up"
							@player.change_sound(:Mic_up)
                            s.print("<end>\n")
						when "mic_down"
							@player.change_sound(:Mic_down)
                            s.print("<end>\n")
						when "music_up"
							@player.change_sound(:Music_up)
                            s.print("<end>\n")
						when "music_down"
							@player.change_sound(:Music_down)
                            s.print("<end>\n")
						when "pitch_up"
							@player.change_sound(:Pitch_up)
                            s.print("<end>\n")
						when "pitch_down"
							@player.change_sound(:Pitch_down)
                            s.print("<end>\n")
						when "reload"
							@db.reload!
                            s.print("<end>\n")
						when "search"
							terms = args.join(" ")
                            puts "Searching for " + terms
                            myresults = @db.search(terms)
                            myresults.each_with_index do |song, i|
                                s.print(i.to_s + "##" + song.to_s + "\n")
                            end
                            s.print("<end>\n")
						else
                            s.print("<error> Unknown command\n")
                            s.print("<end>\n")
                        end
                    end

                rescue ClientQuitError
                    puts "*** #{name}:#{port} disconnected"

                rescue StandardError => e
                    puts e

                ensure
                    puts "*** Closed socket"
                    s.close # close socket on error
                end

                puts "*** done with #{name}:#{port}"
            end

        end
    end

end



