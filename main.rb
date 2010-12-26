#!/usr/bin/ruby -K
require 'db.rb'
require 'server.rb'
require 'player.rb'
require 'webserver.rb'

require 'Qt'

app = Qt::Application.new(ARGV)

db = Database.new
#db.addFolder("/home/pvv/d/haraldhv/src/songs/")
db.addFolder("/home/hhv/Karaoke/")
db.sort!

player = Player.new

#Thread.new do
    webserver = WebServer.new(db, player, 7777)
    webserver.listen
#end

Thread.new do
    server = Server.new(db, player, 5555)
    server.listen
end

player.play_queue
