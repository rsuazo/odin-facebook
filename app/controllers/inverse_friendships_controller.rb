class InverseFriendshipsController < ApplicationController
    def create
        @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
          if @friendship.save
              flash[:notice] = "Added friend."
              Request.find(params[:request_id]).destroy
              redirect_to users_path
          else
            flash[:error] = "Unable to add friend."
            redirect_to users_path
          end
      end
  
      def destroy
        @friendship = current_user.inverse_friendships.where(user_id: params[:id]).first
        @friendship.destroy
        flash[:notice] = "Removed friendship."
        redirect_to users_path
      end
end
