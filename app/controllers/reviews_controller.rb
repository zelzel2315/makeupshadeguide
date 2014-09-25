class ReviewsController < ApplicationController
    respond_to :json

  def index
    @reviews = Review.all
    # raise @reviews.inspect
    @makeups = Makeup.all
    respond_with @reviews, each_serializer: ReviewSerializer
  end

  def new
    @review = Review.new
  end
 
  def create
    @makeup = Makeup.find(params[:makeup_id])
    @review = current_user.reviews.new(review_params)
    @review.makeup_id = @makeup.id
    if @review.save
      redirect_to makeup_path(@makeup.id)
    else
      render 'new'
    end
  end

  def show
  @reviews = Review.all


  end

  def edit

  end

  def update
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to reviews_path
  end

  private
  def review_params
    params.require(:review).permit(:rating, :comment, :makeup_id, :user_id)

  end
  

end
