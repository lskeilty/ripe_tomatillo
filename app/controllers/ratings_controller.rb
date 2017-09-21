class RatingsController < ApplicationController
  def new
    @rating = Rating.new
  end

  def create
    if params[:film_id]
      @film = Film.find(params[:film_id])
      @new_rating = @film.rating.new(rating_params)
      @new_rating.user = current_user

      if @new_rating.save
        redirect_to film_path
      else
        render 'new'
      end
    end
  end

private
  def rating_params
    params.require(:new_rating).permit(:rating)
  end
end
