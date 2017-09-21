class FilmsController < ApplicationController
  def show
    @category = Category.find(params[:id])
  end

end
