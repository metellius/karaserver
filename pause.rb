require 'Qt'

class Ui_PauseDisplay < Qt::Widget

    def initialize(parent = nil)
        super
        require 'ui_pause.rb'
        setup_ui(self)
    end

    def set_next_song song
        @nextLabel.setText(song)
    end

    def set_queue songs
        @queueLabel.setText(songs)
    end

end

