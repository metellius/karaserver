require 'song.rb'

class Database

    attr_reader :songs

    def initialize
        @songs = []
    end

    def addFolder folder
        Dir.glob("#{folder}/**/*.zip").each do |zipsong|
            @songs.push(Song.new(zipsong))
        end

        Dir.glob("#{folder}/**/*.cdg").each do |cdgsong|
            @songs.push(Song.new(cdgsong))
        end
    end

end
