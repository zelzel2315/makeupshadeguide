class ReviewsController < ApplicationController
  def index
    @reviews = Review.new
    @makeups = Makeup.all
  end

  def new
    @review = Review.new
    puts "XXXXXXXXXXX"
    puts params
  end
 
  def create
    puts "XXXXXXXXXXX"
    puts params
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
    # @review = Review.
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
