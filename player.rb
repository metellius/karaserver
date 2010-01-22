require 'song.rb'
require 'pause.rb'

class Player

    def initialize
        @queue = []
        @pause = Ui_PauseDisplay.new
        @pause.show
    end

    def queue song
        @queue.push song
    end

    def play_queue
        loop do
            song = @queue.shift
            if song == nil
                @pause.set_next_song("")
                @pause.set_queue("")

                @pause.repaint
                Qt::CoreApplication.processEvents
                sleep(0.5)
                next
            end

            @pause.set_next_song(song.to_s)
            q = ""
            @queue.each do |qsong|
                q += qsong.to_s + "\n"
            end
            @pause.set_queue(q)

            8.times do
                @pause.repaint
                Qt::CoreApplication.processEvents
                sleep(0.5)
            end

            @pause.hide

            song.play
            @pause.show

        end
    end

end
