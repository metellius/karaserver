require 'song.rb'

class Player

    def initialize
        @queue = []
    end

    def queue song
        @queue.push song
    end

    def play_queue
        loop do
            song = @queue.shift
            if song == nil
                sleep(3)
                next
            end

            song.play
        end
    end

end
