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

    def set_scoreFrame_visible visible
        options = [
            "Acceptable", "Ace", "Admirable", "Agreeable", "Capital", "Choice",
            "Commendable", "Congenial", "Crack", "Deluxe", "Excellent",
            "Exceptional", "Favorable", "First-class", "First-rate", "Gnarly",
            "Gratifying", "Great", "Honorable", "Marvelous", "Neat", "Nice",
            "Pleasing", "Positive", "Precious", "Prime", "Rad", "Recherché",
            "Reputable", "Satisfactory", "Satisfying", "Select", "Shipshape",
            "Sound", "Spanking", "Splendid", "Sterling", "Stupendous", "Super",
            "Super-eminent", "Super-excellent", "Superb", "Superior",
            "Tip-top", "Up to snuff", "Valuable", "Welcome", "Wonderful",
            "Worthy", "Able", "Able-bodied", "Absolute", "Acceptable", "Ace", "Aces",
            "Adept", "Admirable", "Adroit", "Agreeable", "Alive and kicking",
            "Amazing", "Astonishing", "Astounding", "Awe-inspiring", "Awesome",
            "Best", "Blooming", "Bright-eyed", "Brilliant", "Brutal",
            "Bushy-tailed", "Capital", "Chic", "Chipper", "Choice",
            "Commendable", "Complete", "Congenial", "Consummate", "Cool",
            "Dandy", "Deep", "Deluxe", "Divine", "Downright", "Dynamite",
            "Egregious", "Enjoyable", "Excellent", "Exceptional", "Exemplary",
            "Expert", "Fab", "Fabulous", "Famous", "Fantastic", "Far-out",
            "Favorable", "Fine", "First-class", "First-rate", "Fit",
            "Five-star", "Flourishing", "Fly", "Fresh", "Glorious", "Gnarly",
            "Good", "Grand", "Gratifying", "Great", "Groovy", "Hale", "Hardy",
            "Hearty", "Heavy", "Hellacious", "Hip", "Honorable", "Hunky-dory",
            "Husky", "Incredible", "In good health", "In the pink", "Keen",
            "Magnificent", "Marvelous", "Masterly", "Miraculous", "Model",
            "Neat", "Nice", "Nifty", "Number one",  "Out of sight",
            "Out of this world", "Outstanding", "Paragon", "Peachy",
            "Perfect", "Phenomenal", "Pleasant", "Pleasing", "Positive",
            "Precious", "Prime", "Proficient", "Rad", "Recherché",
            "Remarkable", "Reputable", "Right", "Right as rain", "Robust",
            "Sane", "Satisfactory", "Satisfying", "Select", "Sensational",
            "Shipshape", "Solid as a rock", "Something else", "Sound",
            "Spanking", "Splendid", "Staggering", "Startling", "Sterling",
            "Strange", "Strong", "Strong as an ox", "Stupendous", "Super",
            "Superb", "Super-duper", "Super-eminent", "Super-excellent",
            "Superior", "Sup rior", "Surpassing", "Surprising", "Swell",
            "Terrific", "Tip-top", "Together", "Total",
            "Transcendent", "Tremendous", "Trendy", "Trim", "Unheard-of",
            "Unmitigated", "Unorthodox", "Unqualified", "Up to par",
            "Utter", "Valuable", "Vigorous", "Way-out", "Welcome",
            "Whole", "Wholesome", "Wild", "With it", "Wonderful", "Wondrous",
            "Worthy", "Wrapped tight"
        ]
        @performanceLabel.setText(options[options.size * rand])
        @scoreFrame.setVisible visible
    end

    def show_timed seconds
        (seconds * 10).to_i.times do
            Qt::CoreApplication.processEvents
            sleep(0.1)
        end
    end

end

