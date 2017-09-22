class RatingsController < ApplicationController
  # def new
  #   # @new_rating = Rating.new
  # end

  def create
    if params.has_key?(:film_id)
      @film = Film.find(params[:film_id])
      @new_rating = @film.ratings.new(rating_params)
      @new_rating.user = current_user

      if @new_rating.save
        redirect_to film_path(@film)
      else
        render '_new'
      end
    elsif params.has_key?(:review_id)
      @review = Review.find(params[:review_id])
      @new_rating = @review.ratings.new(rating_params)
      @new_rating.user = current_user

      if @new_rating.save
        redirect_to film_path(@review.film.id)
      else
        render '_error'
      end
    end
  end

private
  def rating_params
    params.require(:rating).permit(:rating)
  end
end
