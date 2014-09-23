class SessionsController < ApplicationController

  def new
   @user = User.new
   @is_login = true
   # if current_user
   #    redirect_to users_show_path(@user)
   #  end
    end
 
  def create
    user = User.where(email: params[:user][:email]).first
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id.to_s
      redirect_to current_user
    else
      redirect_to new_session_path
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end
end

