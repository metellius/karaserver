#!/usr/bin/ruby -K
require 'db.rb'
require 'server.rb'
require 'player.rb'
require 'webserver.rb'
require 'jsonserver.rb'

require 'Qt'

app = Qt::Application.new(ARGV)

db = Database.new
#db.addFolder("/home/pvv/d/haraldhv/src/songs/")
#db.addFolder("/home/hhv/Karaoke/")
db.addFolder("/home/harald/Karaoke/")
db.sort!

#db.songs.each do |song|
    #puts song.hashid + " " + song.to_s
#end

player = Player.new

Thread.new do
    jsonserver = JsonServer.new(db, player, 8888)
    jsonserver.listen
end


#Thread.new do
    #webserver = WebServer.new(db, player, 7777)
    #webserver.listen
#end

#Thread.new do
    #server = Server.new(db, player, 5555)
    #server.listen
#end

player.play_queue
