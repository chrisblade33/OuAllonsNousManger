class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def search
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(params_restaurant())
    if @restaurant.save
      redirect_to fait_restaurants_path
    else
      render :new
    end
  end

  def new
    @restaurant = Restaurant.new
  end

  def fait
    @restaurants = Restaurant.all
  end

  private

  def params_restaurant
    params.require(:restaurant).permit(:nom, :adresse, :telephone, :url)
  end
end