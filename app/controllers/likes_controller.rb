class LikesController < ApplicationController
    def new 
        @like = Like.new
    end

    def create 
        @like = Like.build(user_id: current_user.id, post_id: params[:post_id])
       
        if @like.save
            flash[:notice] = "Post liked!"
            redirect_to user_path
        else
            flash[:error] = "Unable to like post."
            redirect_to users_path
        end

    end
end