class LikesController < ApplicationController
    def new 
        @like = Like.new
    end

    def create 
        @like = Post.find(params[:post_id]).likes.build(user_id: params[:user_id])
       
        if @like.save
            flash[:notice] = "Post liked!"
            redirect_to homepage_index_path
        else
            flash[:error] = "Unable to like post."
            redirect_to homepage_index_path
        end

    end
end