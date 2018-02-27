class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    begin
      @author = Author.create!(author_params)
    rescue
      render :new
    else
      redirect_to author_path(@author)
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
