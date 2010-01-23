require 'song.rb'

class Database

    attr_reader :songs

    def initialize
        @songs = []
    end

    def addFolder folder
		["zip", "cdg"].each do |type|
			Dir.glob("#{folder}/**/*.#{type}").each do |filename|
				split = File.split(filename)
				@songs.push(Song.new(filename, split[1]))
			end
		end
    end

    def search term
        results = []
        @songs.each do |song|
            if song.match(term)
                results.push song
            end
        end
        return results
    end
end
