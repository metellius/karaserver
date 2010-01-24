require 'Qt'

class Ui_PauseDisplay < Qt::Widget

    def initialize(parent = nil)
        super
        require 'ui_pause.rb'
        setup_ui(self)
        setWindowState(Qt::WindowFullScreen)
    end

    def set_next_song song
        if song.empty?
            @nextLabel.setText("Empty, need more songs!")
        else
            @nextLabel.setText(song)
        end
    end

    def set_queue songs
        @queueLabel.setText(songs)
    end

end

