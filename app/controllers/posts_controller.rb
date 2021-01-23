class PostsController < ApplicationController
    def index 
      friends = current_user.friends + current_user.inverse_friends
      posts = friends.collect {|friend| friend.posts}.flatten + current_user.posts
      posts = posts.sort_by &:created_at
      @posts = posts.reverse
    end

    def create
      @post = current_user.posts.new(post_params)
      
        if @post.save
            flash[:notice] = "Created Post!"
            redirect_to homepage_index_path

        else
            flash[:alert] = "Unable to create post."
            redirect_to homepage_index_path
        end
    end

    def show
        @post = Post.find(params[:id])
        @comments = @post.comments
    end

    private

    def post_params
        params.require(:post).permit(:title, :body, :id)
    end
end
