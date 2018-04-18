class AuthorsController < ApplicationController
  before_action :set_author, only: [:show, :edit, :update]
  
  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.valid?
      redirect_to author_path(@author) if !!@author.save
    else
      render :new
    end
  end
  
  def show
  end
  
  def edit
  end
  
  def update
    if !!@author.update(author_params)
      redirect_to author_path(@author)
    else
      render :edit
    end
  end

  private

  def author_params
    params.permit(:name, :email, :phone_number)
  end
  
  def set_author
    @author = Author.find(params[:id])
  end
end
