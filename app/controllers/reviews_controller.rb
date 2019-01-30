class ReviewsController < ApplicationController
  before_action :authenticate_user!


  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    @review.user = current_user
    @review.guitar = Guitar.find(params:[:guitar_id])
  end

  private

  def review_params
      params.require(:review).permit(:review_content, :group_id, :id)
  end
  
end
