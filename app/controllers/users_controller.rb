class UsersController < ApplicationController
    def index
      @users = User.all
      @friends = current_user.friends
      @inverse_friends = current_user.inverse_friends
      @requests = current_user.requests.collect {|request| User.find(request.friend_id)}
      @inverse_requests = current_user.inverse_requests.collect {|request| User.find(request.user_id)}
    end

    def show
      @user = current_user
      @post = Post.new
      @posts = current_user.posts.reverse
    end

    def update
      @user = User.find(params[:id])
      
      if @user.update(user_params)
        flash[:notice] = "Profile Updated!"
        redirect_to user_path
      else
        render :edit
      end
    end

    def edit
      @user = current_user
    end

    def friend?
      include?(current_user.friends)
    end

    private

    def user_params
      params.require(:user).permit(:id, :first_name, :last_name, :avatar)
    end
end