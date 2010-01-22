require 'db.rb'
require 'socket'

class ClientQuitError < RuntimeError; end


class Server

    def initialize db, port
        @db = db
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

                begin
                    while line = s.gets # read a line at a time
                        raise ClientQuitError if line =~ /^die\r?$/
                            puts "#{addr} [#{Time.now}]: #{line}"
                    end

                rescue ClientQuitError
                    puts "*** #{name}:#{port} disconnected"

                ensure
                    s.close # close socket on error
                end

                puts "*** done with #{name}:#{port}"
            end

        end
    end

end



