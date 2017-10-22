class CommentsController < ApplicationController

  def create
    if params.has_key?(:film_id)

      @film = Film.find(params[:film_id])
      @comment = @film.comments.new(comment_params)
      @comment.user = current_user

      if @comment.save
        redirect_to film_path(@film)
      else
        render '_new'
      end
    elsif params.has_key?(:review_id)
      @review = Review.find(params[:review_id])
      @comment = @review.comments.new(comment_params)
      @comment.user = current_user

      if @comment.save
        redirect_to film_path(@review.film.id)
      else
        redirect_back(fallback_location: root_path)
      end
    end
  end

private
  def comment_params
    params.require(:comment).permit(:description)
  end
end
