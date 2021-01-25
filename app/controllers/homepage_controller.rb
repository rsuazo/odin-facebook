class HomepageController < ApplicationController
    def index
      @user = current_user
      @requests = current_user.requests 
      @inverse_requests = current_user.inverse_requests
      @post = Post.new
    end
end