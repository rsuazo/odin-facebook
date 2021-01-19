class CommentsController < ApplicationController
    def create 
        @comment = Post.find(params[:post_id]).comments.build(user_id: params[:user_id], body: params[:body])
       
        if @comment.save
            flash[:notice] = "Comment posted!"
            redirect_to post_path(params[:post_id])
        else
            flash[:error] = "Unable to add comment to post."
            redirect_to post_path(params[:post_id])
        end
    end
end
