class PicturesController < ApplicationController
	def index
		api_key = "CAACEdEose0cBAFqBDdLO4uQYjZAilajY5nzPeFw6ApK5tSw2ZCoZA8UPMldwl26H7FkGioHY3appZCZAxwf4JuB8KVb6CZA9fMOSwOHmW1DuEeNrOZAJeJj2KOCg6c7d8XwjGSa1ZArXYMoaZAZB6fZBGSQlXcYSvdmAvmVzSFuSx79ZAP1S6Y4PV0dQkPQgPM0IMXS4WDZBwiGLwyQZDZD"

		@graph = Koala::Facebook::API.new("CAACEdEose0cBAFqBDdLO4uQYjZAilajY5nzPeFw6ApK5tSw2ZCoZA8UPMldwl26H7FkGioHY3appZCZAxwf4JuB8KVb6CZA9fMOSwOHmW1DuEeNrOZAJeJj2KOCg6c7d8XwjGSa1ZArXYMoaZAZB6fZBGSQlXcYSvdmAvmVzSFuSx79ZAP1S6Y4PV0dQkPQgPM0IMXS4WDZBwiGLwyQZDZD")
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
