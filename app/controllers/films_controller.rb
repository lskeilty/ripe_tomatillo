class FilmsController < ApplicationController
  def show
    @film = Film.find(params[:id])
    @new_rating = Rating.new
    @ratings = Rating.all
    @review = Review.new
    @reviews = Review.all
    @comment = Comment.new
    @comments = Comment.all
    #@the_review = Review.find(params[:])
  end

end
