# Aricale Controller
class ArticalesController < ApplicationController
  before_action :set_articale, only: [:edit, :update, :show, :destroy]
  def index
    @articales = Articale.paginate(page: params[:page], per_page: 5)
  end

  def show
  end

  def new
    @articale = Articale.new
  end

  def create
    @articale = Articale.new(params.require(:articale).permit(:title, :description))
    @articale.user = User.first
    if @articale.save
      flash[:notice] = 'Article was created successfully.'
      redirect_to articale_path(@articale) 
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @articale.update(params.require(:articale).permit(:title, :description))
      flash[:notice] = 'Article was updated successfully.'
      redirect_to articale_path(@articale)
    else
      render 'edit'
    end
  end

  def destroy
    @articale.destroy
    redirect_to articales_path
  end

  private

  def set_articale
    @articale = Articale.find(params[:id])
  end
end
