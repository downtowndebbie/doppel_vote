class PicturesController < ApplicationController
	def index

		api_key = "CAACEdEose0cBANZCiiqY2iW5v0aA2meLgxPO4as0xIUNkaHby7oI3ZCqYjmbtmY2l0Ea9HITN3P3mzH1wqTOinP6RjKj3wIAOmnmG7SGTFwuqiNy2K90qjCxmAacAo5ZBZCoLB6ynvTi23T5ZAx1qyNBkHiUsZAgHrdk4B1juucGIqYZBN9ATQe5flgE8VQre5YJQhZAi9ZB3uwZDZD"

		@graph = Koala::Facebook::API.new("CAACEdEose0cBANZCiiqY2iW5v0aA2meLgxPO4as0xIUNkaHby7oI3ZCqYjmbtmY2l0Ea9HITN3P3mzH1wqTOinP6RjKj3wIAOmnmG7SGTFwuqiNy2K90qjCxmAacAo5ZBZCoLB6ynvTi23T5ZAx1qyNBkHiUsZAgHrdk4B1juucGIqYZBN9ATQe5flgE8VQre5YJQhZAi9ZB3uwZDZD")
		# album_id = # dynamically get a user's album id
		album_id = "592507767875"
		photos = @graph.get_connections("592507767875", "photos")
		@picture = photos.inject(Array.new) { |photos, photo| photos << { id: photo["id"], url: photo["source"] } }
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
