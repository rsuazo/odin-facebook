class UsersController < ApplicationController
    def index
      @users = User.all
      @requests = current_user.requests.collect {|request| User.find(request.friend_id)}
      @inverse_requests = current_user.inverse_requests.collect {|request| User.find(request.user_id)}
    end

    def show
      @user = current_user
        @requests = current_user.requests
        @inverse_requests = current_user.inverse_requests
    end

    def update
      @user = User.find(params[:id])
      @user.update(user_params)
      redirect_to user_path
    end

    def edit
      @user = current_user
    end

    private

    def user_params
      params.permit(:id, :first_name, :last_name, :avatar)
    end
end
