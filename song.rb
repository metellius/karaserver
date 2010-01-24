require 'tmpdir.rb'
require 'fileutils.rb'

$PyFolder = "./pykaraoke-0.7.2/"

$pykarprocess = IO.popen($PyFolder + "control.py", "w+")


def pykarplay filename
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

class Song

    def initialize filename, title
        case filename[-3,3].upcase
        when "ZIP"
            @type = :Zip
        when "CDG"
            @type = :Cdg
        end
        @filename = filename
		@title = title
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

    def match term
        @filename.include?(term)
    end

end
