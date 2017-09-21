class FilmsController < ApplicationController
  def show
    @film = Film.find(params[:id])
    @rating = Rating.new
    @ratings = Rating.all
  end

end
