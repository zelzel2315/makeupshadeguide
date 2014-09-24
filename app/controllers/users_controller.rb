class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new 
    @user = User.new
    @user.user_makeups.build
    # @user.user_makeups.build(name: '1').build_makeup
    # @user.user_makeups.build(name: '2').build_makeup
    # @makeup_list = Array.new
    # for makeup_list.each do |m|
    #   makeup_item = m.brand + " " + m.product + " " + m.shade
    #   makeup_list.push(makeup_item)
    # end 
  end

  def create
    @user = User.new(user_params)
    puts 'LOOK'
    puts params[:user]

      if @user.save
        # UserMakeup.create(makeup_id: params[:user][:user_makeups_attributes][:'0'][:makeup_id], user_id: @user.id)
        @my_makeup = @user.makeups.first
        # @my_makeup = Makeup.where(makeup_id: @user.makeup_id).first
        @user.update(true_shade: @my_makeup.true_shade)
        # @user = @my_makeup.true_shade
        # @user.save
        session[:user_id] = @user.id.to_s
        redirect_to user_path(@user)
      else
        render 'new'
         # respond_to do |format|
    #   if @user.save
    #     flash[:notice] = 'User was successfully created.'
    #     format.html { redirect_to(@user) }
    #   else
    #     format.html { render :action => "new" }
    #   end
    # end
      end
  end

  def show
    @user = User.find(params[:id])
    @user_makeup = @user.user_makeups.where(owns: true)
    @user_collection = @user.user_makeups.where(owns: false)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to users_path(@user)
    else
      render 'edit'
    end
  end

  def destroy
    reset_session
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(
      :name, :email, :password, :password_confirmation, :brand, :product, :shade, :true_shade, user_makeups_attributes: [:user_id, :makeup_id])
  end
end
