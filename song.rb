require 'tmpdir.rb'
require 'fileutils.rb'

$PyFolder = "./pykaraoke-0.7.2/"

class Song

    def initialize filename
        case filename[-3,3].upcase
        when "ZIP"
            @type = :Zip
        when "CDG"
            @type = :Cdg
        end
        @filename = filename
    end

    def to_s
        @filename + " " + @type.to_s
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

            system("#{$PyFolder}pycdg.py \"#{cdgfile}\"")
            FileUtils.rm_rf(tmpdir)
            puts "removing " + tmpdir
        when :Cdg
            system("#{$PyFolder}pycdg.py \"#{@filename}\"")
        end
    end

end
