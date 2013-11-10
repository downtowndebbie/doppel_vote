class PicturesController < ApplicationController
	def index
		api_key = "CAACEdEose0cBAD9VoC5skza1w3eYFfNyDZBd0iPzQY7T7qSOPt2dRxBc0CYCshTT4bJmsxJSbQFrt85YQQ5gAyvcQHuCT3pZB4qKZAb3tdy41zMB6FJLqfN5dnfCrrjvGGpOFZCOLMiwLuam6XJHx5nZArOZB0TFKt7eSTHyGvlEaoPjADsxgfbmYZCh20nTnQWWL1pOsRCxQZDZD"

		@graph = Koala::Facebook::API.new("CAACEdEose0cBAD9VoC5skza1w3eYFfNyDZBd0iPzQY7T7qSOPt2dRxBc0CYCshTT4bJmsxJSbQFrt85YQQ5gAyvcQHuCT3pZB4qKZAb3tdy41zMB6FJLqfN5dnfCrrjvGGpOFZCOLMiwLuam6XJHx5nZArOZB0TFKt7eSTHyGvlEaoPjADsxgfbmYZCh20nTnQWWL1pOsRCxQZDZD")
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
