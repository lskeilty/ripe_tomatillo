class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    if params[:film_id]
      @film = Film.find(params[:film_id])
      @new_comment = @film.comment.new(comment_params)
      @new_comment.user = current_user

      if @new_comment.save
        redirect_to film_path
      else
        render 'new'
      end
    end
  end

private
  def comment_params
    params.require(:new_comment).permit(:description)
  end
end
