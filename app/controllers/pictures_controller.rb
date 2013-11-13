class PicturesController < ApplicationController
	def index
		api_key = "CAACEdEose0cBAH5rE7unxOzi8P6ehocEzyBtZB3DCW3EgomZBSsbgrBhzq8l2GtuZAkLkEJexeaBGCvekcVYkTnQhZAzF9GUzKdY5oVs2JpjbvBHliAW1GArEyuSPPZCyfUD74cJIsJKCUOTb5DrVU8h05yCOJDqE9yhZBgWmYgZCCMyDZCfNAtvvDWEDJimb1zEZBtmRI6kgfgZDZD"

		@graph = Koala::Facebook::API.new("CAACEdEose0cBAH5rE7unxOzi8P6ehocEzyBtZB3DCW3EgomZBSsbgrBhzq8l2GtuZAkLkEJexeaBGCvekcVYkTnQhZAzF9GUzKdY5oVs2JpjbvBHliAW1GArEyuSPPZCyfUD74cJIsJKCUOTb5DrVU8h05yCOJDqE9yhZBgWmYgZCCMyDZCfNAtvvDWEDJimb1zEZBtmRI6kgfgZDZD")
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
