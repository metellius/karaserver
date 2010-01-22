require 'db.rb'
require 'server.rb'

db = Database.new
db.addFolder("songs")

puts db.songs

#song = db.songs[2]
#song.play

server = Server.new(db, 12345)
server.listen
