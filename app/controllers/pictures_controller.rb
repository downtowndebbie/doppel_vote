class PicturesController < ApplicationController
	def index
		api_key = "CAACEdEose0cBAD945FsBd1TueVZAXVXmwLUnoGZAc03ay2ljIKpYeuVhfL66uCY3OrntsZBAM1ztsNZA44tsZBgFQ4aaZA77OPP5uJTRcEyNN9ATfX9VnMKMTuvVyU2nP5PiVk9xPmrbb8Ec1ZAtzVnOWQpOoGfvq2uG4pZBZCZAKZAW0dDfyBtow6XZCf8jQVCZBY71AMPOByqfCLQZDZD"

		@graph = Koala::Facebook::API.new("CAACEdEose0cBAD945FsBd1TueVZAXVXmwLUnoGZAc03ay2ljIKpYeuVhfL66uCY3OrntsZBAM1ztsNZA44tsZBgFQ4aaZA77OPP5uJTRcEyNN9ATfX9VnMKMTuvVyU2nP5PiVk9xPmrbb8Ec1ZAtzVnOWQpOoGfvq2uG4pZBZCZAKZAW0dDfyBtow6XZCf8jQVCZBY71AMPOByqfCLQZDZD")
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
