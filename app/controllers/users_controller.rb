class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update] # probably want to keep using this
  
  
  def index
    @users = User.search(params[:search])
    @friends = current_user.friends
    @inverse_friends = current_user.inverse_friends
    @requests = current_user.requests.collect { |request| User.find(request.friend_id) }
    @inverse_requests = current_user.inverse_requests.collect { |request| User.find(request.user_id) }
  end

  def show
    @post = Post.new
    @posts = @user.posts.reverse
  end

  def edit

  end

  def update

    if @user.update(user_params)
      flash[:notice] = 'Profile Updated!'
      redirect_to user_path
    else
      flash[:alert] = 'Unable to update profile!'
      render :edit
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:id, :first_name, :last_name, :avatar, :search)
  end
end
