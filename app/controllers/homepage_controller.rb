class HomepageController < ApplicationController
    def index
      @post = Post.new
      @posts = current_user.posts
      @user = current_user
    end
end
