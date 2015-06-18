class CommentsController < ApplicationController
	def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create!(params.require(:comment).permit!) 
        @comment.user_id = current_user.id
        #@comment.post_id = @post.id

        redirect_to posts_path
    end
end
