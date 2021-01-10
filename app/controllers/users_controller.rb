class UsersController < ApplicationController
    def index
      @users = User.all
      @requests = current_user.requests.collect {|request| User.find(request.friend_id)}
    end

    def show
        @user = current_user
        @requests = Request.all.select {|request| request.user_id != current_user.id}
    end
end
