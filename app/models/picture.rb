class Picture < ActiveRecord::Base
	has_many :comments


# api_key = "CAACEdEose0cBAHYPZCDEZCMb2s2SERTMhZBHsAId7tAQTkxR5WuWloie1qN7ebGsqv3VvyQIzA33IQiswngs7WkAom5SduWCx2nc2v48QHhBmHdhWe2aQMVVNh4phIrgFDgHF1E9wwOm4He3kAbfSAMXr0P4OZBGWrI4dZC21AZB64APaHF5AppEUiRYM1ZAZBjLjqqPVabBJAZDZD"

# 	@graph = Koala::Facebook::API.new("6a77ed988ca65393ca51fdf6d2ae0b8e")
# 	# album_id = # dynamically get a user's album id
# 	album_id = "592507767875"
# 	photos = @graph.get_connections("592507767875", "photos")
	# dopplegangers = photos.inject(Array.new) { |photos, photo| photos << { id: photo["id"], url: photo["source"] } }

#picture.new()

	def self.get_comments_for(id)
	  picture = Picture.find_by_facebook_id(id)
	  picture ? join_comments(picture) : ""
	 end

	def self.join_comments(picture)
		contents = []
		picture.comments.each { |comment| contents << comment.content }			
		# picture.comments.each do |comment| 
		# 	contents << comment.content
		# end
	end

end
