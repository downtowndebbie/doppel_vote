class CommentsController < ApplicationController
	before_action :authenticate_user!, only: [:create]

	# def comment.show do
 #    attributes_table :name, :comment, :timestamp
 #    user_comments 
 #  	end 

  def create
    picture = Picture.find_or_create_by(facebook_id: params[:facebook_id])
    if picture.comments.create(content: params[:comment])
      redirect_to root_url
    else
      flash[:notice] = "Comment couldn't be saved"
      render 'index'
    end
  end

  def show
    @comments = Comment.all
  end

  def user
    @comment.user = current_user
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
 
    redirect_to root_url
  end
end