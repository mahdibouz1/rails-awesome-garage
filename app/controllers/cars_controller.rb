class CarsController < ApplicationController
  def index
    @cars = Car.all
  end
  def show
    @car = Car.find(params[:id])
    @review = @car.reviews
  end
end
