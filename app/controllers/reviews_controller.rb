class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    if params[:film_id]
      @film = Film.find(params[:film_id])
      @new_review = @film.review.new(review_params)
      @new_review.trusted_user = current_user

      if @new_review.save
        redirect_to film_path
      else
        render 'new'
      end
    end
  end

private
  def review_params
    params.require(:new_review).permit(:body)
  end
end
