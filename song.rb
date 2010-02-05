require 'tmpdir.rb'
require 'fileutils.rb'

$PyFolder = "./pykaraoke-0.7.2/"


def pykarplay filename

    if not $pykarprocess
        $pykarprocess = IO.popen($PyFolder + "control.py", "w+")
    end

	$pykarprocess.puts(filename)
	while line = $pykarprocess.gets.chomp
		if line == "finished"
			return
		end
	end
end

def pykarstop
	$pykarprocess.puts("#stop#")
end

def pykarrestart
	$pykarprocess.puts("#restart#")
end

def vidplay filename
	$vidprocess = IO.popen("mplayer -ao jack:port=renoise -slave \"#{filename}\"", "w+")

	#$vidprocess.puts(filename)
	while line = $vidprocess.gets.chomp
		if line.include?("Exiting")
			return
		end
	end
	$vidprocess = nil
end

def vidstop
	if $vidprocess
		$vidprocess.puts "stop"
	end
end

def vidrestart
	if $vidprocess
		$vidprocess.puts "seek -999999999999999"
	end
end

def midival val
	if val > 127
		127
	elsif val < 0
		0
	else
		val
	end
end


class Song

	attr_reader :filename

    def initialize filename, title
        case filename[-3,3].upcase
        when "ZIP"
            @type = :Zip
        when "CDG"
            @type = :Cdg
		when "AVI"
			@type = :Vid
		when "MPG"
			@type = :Vid
        end
        @filename = filename

		@upper = filename.gsub("/home/harald", "").upcase

		@title = title.clone
		[".cdg", ".CDG", ".zip", ".ZIP", ".avi", ".AVI", ".mpg", ".MPG"].each do |ext|
			@title.gsub!(ext, "")
		end

		@title.gsub!("_", " ")
		@title.gsub!(/^[a-zA-z]{2,4}\d{2,5}-\d{2,4}(\s*-*\s)?/, "")
		@title.gsub!("[video][jap] カラオケ", "") 
		@title.gsub!("[video] ", "") 
		@title.strip!
    end

    def to_s
		@title
    end

    def unzip_to_tmp
        dir = Dir.mktmpdir
        system("unzip -jn \"#{@filename}\" -d #{dir}")
        return dir
    end

    def play
		puts "play" + @filename
		@pitch = 64
		@volume = 55

		#reset gain
		`midisend -a "Renoise MIDI Input:1" --control 01 02 #{@volume}`
		
		#disable pitchshift
		`midisend -a "Renoise MIDI Input:1" --control 01 25 0`
        case @type
        when :Zip
            tmpdir = unzip_to_tmp

            cdgfile = Dir.glob(tmpdir + "/*.cdg")[0]
			if not cdgfile
				cdgfile = Dir.glob(tmpdir + "/*.CDG")[0]
			end

            pykarplay(cdgfile)
            FileUtils.rm_rf(tmpdir)
            puts "removing " + tmpdir
        when :Cdg
            pykarplay(@filename)
		when :Vid
			vidplay(@filename)
        end
    end

	def stop
		pykarstop if @type == :Zip or @type == :Cdg
		vidstop if @type == :Vid
	end

    def restart
        pykarrestart if @type == :Zip or @type == :Cdg
        vidrestart if @type == :Vid
    end

	def updatepitch
		if (@pitch-64).abs <= 15
			`midisend -a "Renoise MIDI Input:1" --control 01 25 0`
			@pitch = 64
		else
			`midisend -a "Renoise MIDI Input:1" --control 01 25 127`
		end

		`midisend -a "Renoise MIDI Input:1" --control 01 04 #{@pitch}`
	end

	def pitch_up
		@pitch = midival(@pitch + 20)
		updatepitch
	end

	def pitch_down
		@pitch = midival(@pitch - 20)
		updatepitch
	end

	def volume_up
		@volume = midival(@volume + 20)
		`midisend -a "Renoise MIDI Input:1" --control 01 02 #{@volume}`
	end

	def volume_down
		@volume = midival(@volume - 20)
		`midisend -a "Renoise MIDI Input:1" --control 01 02 #{@volume}`
	end

    def match term
        @upper.include?(term)
    end

end
