require 'song.rb'

class Database

    attr_reader :songs

    def initialize
        @songs = []
		@folders = []
		@sidhash = {}
    end

    def addFolder folder
		["zip", "cdg", "avi"].each do |type|
			Dir.glob("#{folder}/**/*.#{type}").each do |filename|
				split = File.split(filename)
				song = Song.new(filename, split[1])
				@songs.push(song)
				@sidhash[song.sid] = song
			end
		end
		@folders << folder if not @folders.include?(folder)
    end

	def lookup sid
		return @sidhash[sid]
	end

	def sort!
		@songs.sort! { |a,b| a.to_s <=> b.to_s }
	end

	def reload!
		@songs.clear
		@sidhash.clear
		@folders.each do |folder|
			addFolder(folder)
		end
	end

    def search term
        results = []
		words = term.upcase.split(" ")
        @songs.each do |song|
			match = true
			words.each do |word|
				if not song.match(word)
					match = false
					break
				end
			end
			results.push song if match
        end
        return results
    end
end
