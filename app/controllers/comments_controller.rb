class CommentsController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create]

	# def comment.show do
 #    attributes_table :name, :comment, :timestamp
 #    user_comments 
 #  	end 

  def post
      comment = Comment.create(content: params[:comment])
      # current_user.comments << comment
      picture = Picture.find_or_create_by(facebook_url: params[:pic_url])
      picture.comments << comment
      picture.save
      redirect_to ('/') 
    end

    def show
      @comments = Comment.all
    end

    def destroy
      @comment = Comment.find(params[:id])
      @comment.destroy
   
      redirect_to('/')
    end

end
