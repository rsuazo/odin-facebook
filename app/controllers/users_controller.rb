class UsersController < ApplicationController
    def index
      @users = User.all
      @requests = current_user.requests.collect {|request| User.find(request.friend_id)}
      @inverse_requests = current_user.inverse_requests.collect {|request| User.find(request.user_id)}
    end

    def show
        @requests = current_user.requests
        @inverse_requests = current_user.inverse_requests
    end
end
