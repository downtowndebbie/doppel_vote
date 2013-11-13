class PicturesController < ApplicationController
	def index
		api_key = "CAACEdEose0cBANSnpdit2Xl7yndg0qOqcTY3XI4GCgZCK6cNcBcd7FI3KCNZBQoFrhrbC26Q2iFwqMdTrZAYnoq0q4OVZBnfEweUZC2e4MLuqfUgyMhzXHsBDSqZAwuIjO1OlySoCL04ZBA8t3DXxiscI6zDOu2pRUQCJq5gKFhy91GOo1BhEnZC9fsK2b10IdXS5sAxIU0HWwZDZD"

		@graph = Koala::Facebook::API.new("CAACEdEose0cBANSnpdit2Xl7yndg0qOqcTY3XI4GCgZCK6cNcBcd7FI3KCNZBQoFrhrbC26Q2iFwqMdTrZAYnoq0q4OVZBnfEweUZC2e4MLuqfUgyMhzXHsBDSqZAwuIjO1OlySoCL04ZBA8t3DXxiscI6zDOu2pRUQCJq5gKFhy91GOo1BhEnZC9fsK2b10IdXS5sAxIU0HWwZDZD")
		# album_id = # dynamically get a user's album id
		album_id = "592507767875"
		photos = @graph.get_connections("592507767875", "photos")
		@pictures = photos.inject(Array.new) { |photos, photo| photos << { id: photo["id"], url: photo["source"] } }
		
		#@doppelgangers.each do |doppl|
			#Picture.create(id: doppl.id, url: doppl.url)
		#end
	end

	def comments
	end

	# 	## route /comment_save
	# 	picture = picture.find(params[:pic_id])
	# 	comment = params[:comment]

	# 	picture.comments << comment
	# 	picture.save
	# end
end
