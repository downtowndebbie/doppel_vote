class PicturesController < ApplicationController
  MY_ALBUM_ID = "592507767875"

	def index
    # This is what 'dotenv-rails' (in your Gemfile) is for. Save your api keys
    # and other private information so it can't be accessed in production.
		api_key = "CAACEdEose0cBAFqBDdLO4uQYjZAilajY5nzPeFw6ApK5tSw2ZCoZA8UPMldwl26H7FkGioHY3appZCZAxwf4JuB8KVb6CZA9fMOSwOHmW1DuEeNrOZAJeJj2KOCg6c7d8XwjGSa1ZArXYMoaZAZB6fZBGSQlXcYSvdmAvmVzSFuSx79ZAP1S6Y4PV0dQkPQgPM0IMXS4WDZBwiGLwyQZDZD"

		@graph = Koala::Facebook::API.new("CAACEdEose0cBAFqBDdLO4uQYjZAilajY5nzPeFw6ApK5tSw2ZCoZA8UPMldwl26H7FkGioHY3appZCZAxwf4JuB8KVb6CZA9fMOSwOHmW1DuEeNrOZAJeJj2KOCg6c7d8XwjGSa1ZArXYMoaZAZB6fZBGSQlXcYSvdmAvmVzSFuSx79ZAP1S6Y4PV0dQkPQgPM0IMXS4WDZBwiGLwyQZDZD")
		# album_id = # dynamically get a user's album id
    # What does this number represent? Is it your album? Clean this up with a 
    # constant, like so:
		album_id = MY_ALBUM_ID
		photos = @graph.get_connections(MY_ALBUM_ID, "photos")
    # nice use of inject to get a new array of pictures!
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
