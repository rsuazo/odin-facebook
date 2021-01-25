class LikesController < ApplicationController
    def create 
        @like = Post.find(params[:post_id]).likes.build(user_id: params[:user_id])
       
        if @like.save
            flash[:notice] = "Post liked!"
            redirect_to post_path(params[:post_id])
        else
            flash[:alert] = "Unable to like post."
            redirect_to post_path(params[:post_id])
        end
    end
end

