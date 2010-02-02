require 'song.rb'
require 'pause.rb'


def startstopmusic
    #`dbus-send --print-reply --type=method_call --dest=org.kde.amarok /Player org.freedesktop.MediaPlayer.PlayPause`
end

class Player

    def initialize
        @queue = []
        @pause = Ui_PauseDisplay.new
        @pause.show
        @pause.raise
        @playing = nil

		restore_backup

    end

    def queue song
		#l = Qt::Label.new("<h1>halla</h1>")
		#l.setWindowFlags(Qt::FramelessWindowHint | Qt::WindowStaysOnTopHint)
		#l.show
        @queue.push song
		backup_queue
    end

	def backup_queue
		f = File.open("./karaokebackup", "w")
		@queue.each do |song|
			f.puts song.filename
		end
		f.close
	end

	def restore_backup
		if File.exist?("./karaokebackup")
			File.readlines("./karaokebackup").each do |filename|
				filename.chomp!
				split = File.split(filename)
				queue(Song.new(filename, split[1]))
			end
		end
	end

    def play_queue
        loop do
            song = @queue.shift
            if song == nil
                startstopmusic

                @pause.set_next_song("")
                @pause.set_queue("")

                while @queue.empty?
                    @pause.repaint
                    Qt::CoreApplication.processEvents
                    sleep(0.5)
                end

                startstopmusic
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

            @playing = song
            song.play
            @playing = nil
            @pause.show
            @pause.raise

        end
    end

	def change_sound order
		puts order.to_s
		case order
		when :Mic_up
			`amixer -c 3 set Mic 2+`
		when :Mic_down
			`amixer -c 3 set Mic 2-`
		when :Music_up
			`amixer -c 3 set Mic 2+`
		when :Music_down
			`amixer -c 3 set Mic 2-`
		end
	end
    
    def stop
        return if not @playing
        @playing.stop
    end

    def pause
        return if not @playing
        @playing.pause
    end

    def restart
        return if not @playing
        @playing.restart
    end

end
