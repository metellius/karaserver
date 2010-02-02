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

def pykarpause
	$pykarprocess.puts("#pause#")
end

def vidplay filename
	$vidprocess = IO.popen("mplayer -slave \"#{filename}\"", "w+")

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

def vidpause
	if $vidprocess
		$vidprocess.puts "pause"
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

		@title.gsub!(/SF\d+-\d+/, "")
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
        case @type
        when :Zip
            tmpdir = unzip_to_tmp
            cdgfile = Dir.glob(tmpdir + "/*.cdg")[0]

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
        pykarstop if @type == :Zip or @type == :Cdg
        pykarplay if @type == :Zip or @type == :Cdg
    end

    def pause
        pykarpause if @type == :Zip or @type == :Cdg
		vidpause if @type == :Vid
    end

    def match term
        @upper.include?(term)
    end

end
