class CommentsController < ApplicationController
    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.new(comment_params)
       
        if @comment.save
            flash[:notice] = "Comment posted!"
            redirect_to post_path(params[:post_id])
        else
            flash[:alert] = "Unable to add comment to post."
            redirect_to post_path(params[:post_id])
        end
    end

    private
    def comment_params
        params.permit(:id, :user_id, :body)
    end
end
