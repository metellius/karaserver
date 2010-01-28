require 'song.rb'

class Database

    attr_reader :songs

    def initialize
        @songs = []
    end

    def addFolder folder
		["zip", "cdg", "avi"].each do |type|
			Dir.glob("#{folder}/**/*.#{type}").each do |filename|
				split = File.split(filename)
				@songs.push(Song.new(filename, split[1]))
			end
		end
    end

	def sort!
		@songs.sort! { |a,b| a.to_s <=> b.to_s }
	end

    def search term
        results = []
		upper = term.upcase
        @songs.each do |song|
            if song.match(upper)
                results.push song
            end
        end
        return results
    end
end
