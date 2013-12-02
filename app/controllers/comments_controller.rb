class CommentsController < ApplicationController
	before_action :authenticate_user!, only: [:create]
  # No need to comment out code that you're no longer using. Trust git! It will 
  # save the history of all of your files.

	# def comment.show do
 #    attributes_table :name, :comment, :timestamp
 #    user_comments 
 #  	end 

  def create
    picture = Picture.find_or_create_by(facebook_id: params[:facebook_id])
    comment = Comment.create(content: params[:comment], rating: params[:rating].to_i, user_id: current_user.id)
    picture.comments << comment
    picture.save
    redirect_to '/'
    # if picture.comments.create(content: params[:comment], rating: params[:rating])
    #   redirect_to "/"
    # else
    #   flash[:notice] = "Comment couldn't be saved"
    #   render 'index'
    # end
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
 
    redirect_to root_path
  end
end



