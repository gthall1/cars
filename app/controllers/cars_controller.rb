class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def new
    @new_car = Car.new
    @makes = Make.all
  end

  def create
    @car = Car.new(car_params)
    binding.pry
    if @car.save
      redirect_to cars_path
    else
      flash.now[:notice] = "Please fill out this field."
    end
  end

  private

  def car_params
    params.require(:car).permit(:make_id, :color, :year, :mileage)
  end

end








