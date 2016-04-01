class ReviewsController < ApplicationController

  def create
    @bike = Bike.find(params[:bike_id])
    @review = Review.new(review_params)
    @review.bike = @bike
    @review.user = current_user
    if @review.save!
      respond_to do |format|
        format.html { redirect_to bike_path(@bike) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
      end
    else
      respond_to do |format|
        format.html { render 'bikes/show' }
        format.js
      end
    end
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end

