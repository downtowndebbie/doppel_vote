class PicturesController < ApplicationController
	def index

		api_key = "CAACEdEose0cBAAtdyhLfhuFOu5xZCUhYWlFIYWp4jKt3dVB2xWRRMF0P3qOEx9phBeoe3sj0NOyyjg0MqCAKv1Rrr9OytXX5BklrJymal5GQNO9wHuwNZAs3e0C5Fd2JLBP5ZBCNmZBgR4lZB6OFD9QkSFJErSg9kdWifmBgNYZC7jy7Tp7ZAaAwZBIJbr5pxhx7QZB4DO6eHegZDZD"

		@graph = Koala::Facebook::API.new("CAACEdEose0cBAAtdyhLfhuFOu5xZCUhYWlFIYWp4jKt3dVB2xWRRMF0P3qOEx9phBeoe3sj0NOyyjg0MqCAKv1Rrr9OytXX5BklrJymal5GQNO9wHuwNZAs3e0C5Fd2JLBP5ZBCNmZBgR4lZB6OFD9QkSFJErSg9kdWifmBgNYZC7jy7Tp7ZAaAwZBIJbr5pxhx7QZB4DO6eHegZDZD")
		# album_id = # dynamically get a user's album id
		album_id = "592507767875"
		photos = @graph.get_connections("592507767875", "photos")
		@doppelgangers = photos.inject(Array.new) { |photos, photo| photos << { id: photo["id"], url: photo["source"] } }
		#@doppelgangers.each do |doppl|
			#Picture.create(id: doppl.id, url: doppl.url)
		#end
	end

	# def comment_save
	# 	## route /comment_save
	# 	picture = picture.find(params[:pic_id])
	# 	comment = params[:comment]

	# 	picture.comments << comment
	# 	picture.save
	# end
end
