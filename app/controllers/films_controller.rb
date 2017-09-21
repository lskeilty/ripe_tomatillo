class FilmsController < ApplicationController
  def show
    @film = Film.find(params[:id])
    @new_rating = Rating.new
    @ratings = Rating.all
  end

end
