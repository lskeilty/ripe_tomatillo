class ReviewsController < ApplicationController
  include UsersHelper

  def new
    @review = Review.new
  end

  def create
    if params[:film_id]
      @film = Film.find(params[:film_id])
      @review = @film.reviews.new(review_params)

      if is_trusted?(current_user)
        @review.trusted_user = current_user
      end

      if @review.save
        redirect_to film_path(@film)
      else
        render '_new'
      end
    end
  end

private
  def review_params
    params.require(:review).permit(:body)
  end
end
