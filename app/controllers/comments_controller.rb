class CommentsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :show]
	def create
        @post = Post.find(params[:post_id])
        @comment = @post.current_user.comments.create!(params.require(:comment).permit!) 
        @comment.user_id = current_user.id
        @comment.post_id = @post.id

        track_activity @comment
        redirect_to posts_path
    end
end
