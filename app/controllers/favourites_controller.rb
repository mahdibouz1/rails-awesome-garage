class FavouritesController < ApplicationController
  def index
    @favourites = Favourite.includes(:car).all
  end

  def create
    @car = Car.find(params[:car_id])
    if Favourite.exists?(car: @car)
      redirect_to car_path(@car), alert: "This car is already in your favourites."
    else
      @favourite = Favourite.new(car: @car)
      if @favourite.save
        redirect_to car_path(@car), notice: "Car added to favourites!"
      else
        redirect_to car_path(@car), alert: "Unable to add car to favourites."
      end
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    car = @favourite.car
    @favourite.destroy
    redirect_to favourites_path, notice: "Car removed from favourites."
  end
end
