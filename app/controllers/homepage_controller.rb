class HomepageController < ApplicationController
    def index
      @post = Post.new
      @user = current_user
    end
end
