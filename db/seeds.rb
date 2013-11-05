# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


album_id = 592507767875
<%= f.select(:album_id, @image.albums.all.collect {|a| [a.name, a.id]}) =%>
photos = @graph.get_connections("me", "user_photos :592507767875")