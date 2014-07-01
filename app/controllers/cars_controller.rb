class CarsController < ApplicationController
  def index
    @car = Car.all
  end

  def new

  end

end
