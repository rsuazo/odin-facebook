class HomepageController < ApplicationController
    def index
      @post = Post.new
      @posts = current_user.posts.reverse
      @user = current_user
    end
end