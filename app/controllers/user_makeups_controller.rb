class UserMakeupsController < ApplicationController
  def index
    @user_makeups = UserMakeup.all
  end

  def new
  end

  def create
    @user_makeup = UserMakeup.create(user_id: current_user.id, makeup_id: params[:makeup_id])
    redirect_to user_path(current_user)
  end 
 
  def edit
  end

  def update
  end

  def destroy
  end
end
