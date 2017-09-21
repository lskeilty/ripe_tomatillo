class CommentsController < ApplicationController

  def create
    if params[:film_id]
      @film = Film.find(params[:film_id])
      @comment = @film.comments.new(comment_params)
      @comment.user = current_user

      if @comment.save
        redirect_to film_path(@film)
      else
        render '_new'
      end
    end
  end

private
  def comment_params
    params.require(:comment).permit(:description)
  end
end
