class MakeupsController < ApplicationController
  respond_to :json
  # before_action :set_makeup, only: [:show, :edit, :update, :destroy]

  def index
    @makeups = Makeup.all
    # respond_with @makeups, each_serializer: MakeupSerializer
  end

  def new
    @makeup = Makeup.new
    @makeup = current_user.makeups.new
  end

  def create
    @makeup = Makeup.new(makeup_params)
    # @makeup = current_user.makeups.create(user_id: @user.id, makeup_id: @makeup.id)

    respond_to do |format|
      if @makeup.save
        session[:makeup_id] = @makeup.id.to_s
        format.html { redirect_to @makeup, notice: 'Makeup was successfully created.' }
        format.json { render :show, status: :created, location: @makeup }
      else
        format.html { render :new }
        format.json { render json: @makeup.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @makeup = Makeup.find(params[:id])
    # @image = Makeup.find(params[:image])
  end

  def edit
    @makeup = Makeup.new(makeup_params)
    if @makeup.save
      session[:user_id] = @user.id.to_s
      redirect_to makeup_path
    else
      render 'new'
    end
  end

  def update
    @makeup = Makeup.new(makeup_params)

    respond_to do |format|
      if @makeup.update(makeup_params)
        format.html { redirect_to @makeup, notice: 'Makeup was successfully created.' }
        format.json { render :show, status: :ok, location: @makeup }
      else
        format.html { render :edit }
        format.json { render json: @makeup.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @makeup = Makeup.find(params[:id])
    @makeup.destroy
    respond_to do |format|
      format.html { redirect_to makeups_url, notice: 'Makeup was successfully destroyed' }
      format.json { head :no_content }
    end
  end

  private
  # def set_makeup
  #   @makeup = Makeup.find(params[:id])
  # end

  def makeup_params
    params.require(:makeup).permit(:brand, :product, :shade, :user_id, :makeup_id)
  end

end
