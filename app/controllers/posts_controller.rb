class PostsController < ApplicationController
    def index 
      @posts = current_user.posts
    end

    def create
        @post = current_user.posts.build(title: params[:post][:title], body: params[:post][:body])
          if @post.save
              flash[:notice] = "Created Post!"
              redirect_to homepage_index_path
  
          else
              flash[:error] = "Unable to create post."
              redirect_to users_path
          end
      end
end
