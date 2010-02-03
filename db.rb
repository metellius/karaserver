require 'song.rb'

class Database

    attr_reader :songs

    def initialize
        @songs = []
		@folders = []
    end

    def addFolder folder
		["zip", "cdg", "avi"].each do |type|
			Dir.glob("#{folder}/**/*.#{type}").each do |filename|
				split = File.split(filename)
				@songs.push(Song.new(filename, split[1]))
			end
		end
		@folders << folder if not @folders.include?(folder)
    end

	def sort!
		@songs.sort! { |a,b| a.to_s <=> b.to_s }
	end

	def reload!
		@songs.clear
		@folders.each do |folder|
			addFolder(folder)
		end
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
