class ReviewsController < ApplicationController

  def create
    @property = Property.find(params[:property_id])
    @review = @property.reviews.create(review_params)
    @review.user_id = current_user.id
    @review.save

    redirect_to property_path(@property)
  end

  private
  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
