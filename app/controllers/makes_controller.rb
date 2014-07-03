class MakesController < ApplicationController
  def index
    @make = Make.all
  end

  def new
    @new_make = Make.new
  end

  def create
    @make = Make.new(make_params)
    if @make.save
      redirect_to makes_path
    else
      flash.now[:notice] = "Please fill out this field."
    end
  end

  private

  def make_params
    params.require(:make).permit(:name, :origin)
  end

end




