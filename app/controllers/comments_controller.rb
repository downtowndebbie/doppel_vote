class CommentsController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

	# def comment.show do
 #    attributes_table :name, :comment, :timestamp
 #    user_comments 
 #  	end 

  	def post
  		comment = Comment.new
  		comment = Comment.create(content: params[:comment])
  		# current_user.comments << comment
  		picture = Picture.create(facebook_url: params[:pic_url])
  		picture.comments << comment
  		picture.save
  		redirect_to ('/')
  	end

  	def show
  		@comments = Comment.all
  	end

end
