class PostsController < ApplicationController
    def index 
      friends = current_user.friends + current_user.inverse_friends
      posts = friends.collect {|friend| friend.posts}.flatten + current_user.posts
      posts = posts.sort_by &:created_at
      @posts = posts.reverse
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

    def show
        @post = Post.find(params[:id])
        @comments = Post.find(params[:id]).comments
    end
end
