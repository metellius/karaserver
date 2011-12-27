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

    def play_score_animation
        finalscore = (30 + 70 * rand).to_i
        score = 0.0
        loop do
            score += (finalscore - score) / 50
            set_score(score.to_i.to_s + " points!")
            Qt::CoreApplication.processEvents
            sleep(0.05)
            break if (finalscore - score) < 2
        end
    end

    def set_score score
        @scoreLabel.setText score
    end

    def set_scoreFrame_visible visible
        @scoreFrame.setVisible visible
    end

    def show_timed seconds
        (seconds * 10).to_i.times do
            Qt::CoreApplication.processEvents
            sleep(0.1)
        end
    end

end

