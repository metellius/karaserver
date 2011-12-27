require 'song.rb'
require 'pause.rb'


def startstopmusic
    `dbus-send --print-reply --type=method_call --dest=org.kde.amarok /Player org.freedesktop.MediaPlayer.PlayPause`
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

    def now_playing
        @playing
    end

    def next_song
        @queue.first
    end

    def queue_size
        @queue.size
    end

    def queue song
        puts "queue: " + song.to_s
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
        song_has_been_sung = true
        @pause.set_scoreFrame_visible false
        loop do

            @playing = @queue.shift
            @pause.set_next_song(@playing.to_s)
            @pause.show
            @pause.raise

            if song_has_been_sung
                @pause.set_scoreFrame_visible true
                @pause.show_timed 3.0
                @pause.set_scoreFrame_visible false
                song_has_been_sung = false
            else
                @pause.show_timed 4.0
            end

            if not @playing
                while @queue.empty?
                    @pause.show_timed 0.5
                end
                next
            end

            @pause.hide

            puts "about to play " + @playing.to_s
            @playing.play
            @playing = nil
            song_has_been_sung = true

        end
    end

	def change_sound order
		puts order.to_s
		case order
		when :Mic_up
			`amixer -c 2 set Mic 2+`
		when :Mic_down
			`amixer -c 2 set Mic 2-`
		when :Music_up
			@playing.volume_up unless not @playing
		when :Music_down
			@playing.volume_down unless not @playing
		when :Pitch_up
			@playing.pitch_up unless not @playing
		when :Pitch_down
			@playing.pitch_down unless not @playing
		end
	end
    
    def stop
        return if not @playing
        @playing.stop
		backup_queue
    end

    def restart
        puts "restart"
        return if not @playing
        @playing.restart
    end

end
