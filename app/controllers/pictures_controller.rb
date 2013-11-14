class PicturesController < ApplicationController
	def index
		api_key = "CAACEdEose0cBABXlJtHXaRoyAZB8FWdTHiUilvpZBnZChwV1BZB5PWBj3KVFPeyJj7ZBmSgx9FZAGyLiKSfUzZBYYEwbVXh1VXVIxPsPaV0hc4QFl45ZBvZCLc4IZCTW1JQ79su8uRHlcYbaDko3THHR8fE6sPTXRo11EZA9ffo2tEQGadaET6w2ArNNdV9iMJE39m0CaOIEZBMlWAZDZD"

		@graph = Koala::Facebook::API.new("CAACEdEose0cBABXlJtHXaRoyAZB8FWdTHiUilvpZBnZChwV1BZB5PWBj3KVFPeyJj7ZBmSgx9FZAGyLiKSfUzZBYYEwbVXh1VXVIxPsPaV0hc4QFl45ZBvZCLc4IZCTW1JQ79su8uRHlcYbaDko3THHR8fE6sPTXRo11EZA9ffo2tEQGadaET6w2ArNNdV9iMJE39m0CaOIEZBMlWAZDZD")
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
