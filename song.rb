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

class Song

    def initialize filename, title
        case filename[-3,3].upcase
        when "ZIP"
            @type = :Zip
        when "CDG"
            @type = :Cdg
        end
        @filename = filename
		@title = title.gsub(".cdg", "").gsub(".zip","")
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
        case @type
        when :Zip
            tmpdir = unzip_to_tmp
            cdgfile = Dir.glob(tmpdir + "/*.cdg")[0]

            pykarplay(cdgfile)
            #FileUtils.rm_rf(tmpdir)
            #puts "removing " + tmpdir
        when :Cdg
            pykarplay(@filename)
        end
    end

	def stop
		pykarstop
	end

    def restart
        pykarstop
        pykarplay
    end

    def pause
        pykarpause
    end

    def match term
        @filename.include?(term)
    end

end
