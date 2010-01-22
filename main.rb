require 'db.rb'
require 'server.rb'
require 'player.rb'

db = Database.new
db.addFolder("songs")

puts db.songs

player = Player.new

Thread.new do
    player.play_queue
end

server = Server.new(db, player, 12345)
server.listen
