class RestaurantsController < ApplicationController

  before_action :set_task, only: [:show]

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    new_restaurant = Restaurant.new(restaurant_params)
    new_restaurant.save

    redirect_to restaurant_path(new_restaurant)
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  def set_task
    @restaurant = Restaurant.find(params[:id])
  end
end
