class RequestsController < ApplicationController
    def create
        @request = current_user.requests.build(:friend_id => params[:friend_id])
          if @request.save
              flash[:notice] = "Requested friend."
              redirect_to users_path
          else
              flash[:error] = "Unable to request friend."
              redirect_to users_path
          end
      end
  
      def destroy
          @request = Request.find(params[:id])
          @request.destroy
          flash[:notice] = "Removed request."
          redirect_to user_path
      end
end
