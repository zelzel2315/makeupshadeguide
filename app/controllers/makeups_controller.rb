class MakeupsController < ApplicationController
  respond_to :json

  def index
    @makeups = Makeup.where(true_shade_id: current_user.true_shade_id)
  end

  def static
    @makeups = Makeup.all
    respond_with @makeups, each_serializer: MakeupsSerializer
  end


  def new
    @makeup = Makeup.new
    @makeup = current_user.makeups.new
  end

  def create
    @makeup = Makeup.new(makeup_params, user_id: current_user.id, makeup_id: params[:makeup_id], true_shade_id: current_user.true_shade_id)
    # @makeup = current_user.makeups.create(user_id: @user.id, makeup_id: @makeup.id)

    respond_with Makeup.create(makeup_params)
      if @makeup.save
        @makeup.update(true_shade: current_user.true_shade)
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
    render json: Makeups.find(params[:id])
    @review = Review.new
    @reviews = @makeup.reviews
    gon.watch.reviewOne = Review.where(makeup_id: @makeup.id, rating: 1).count
    gon.watch.reviewTwo = Review.where(makeup_id: @makeup.id, rating: 2).count
    gon.watch.reviewThree = Review.where(makeup_id: @makeup.id, rating: 3).count
    gon.watch.reviewFour = Review.where(makeup_id: @makeup.id, rating: 4).count
    gon.watch.reviewFive = Review.where(makeup_id: @makeup.id, rating: 5).count
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
    respond_with Makeup.destroy(params[:id])
  end

  private
 
  def makeup_params
    params.require(:makeup).permit(:brand, :product, :shade, :image, :true_shade_id, :user_id, :makeup_id)
  end

