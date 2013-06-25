class BeersController < ApplicationController
  def index
    @beers = Beer.all
  end

  def current
    @beers = Beer.current
  end

  def show
    @beer = Beer.find(params[:id])
  end

  def new
    @beer = Beer.new
  end

  def edit
    @beer = Beer.find(params[:id])
  end

  def update
    @beer = Beer.find(params[:id])
    if @beer.update_attributes(params[:beer])
      redirect_to beer_path(@beer), notice: "Beer Updated"
    else
      render :edit
    end
  end
end
