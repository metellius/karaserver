require 'db.rb'
require 'server.rb'
require 'player.rb'

require 'Qt'

app = Qt::Application.new(ARGV)

db = Database.new
db.addFolder("songs")

puts db.songs

player = Player.new

Thread.new do
    server = Server.new(db, player, 5555)
    server.listen
end

player.play_queue
