class MakesController < ApplicationController
  def index
    @make = Make.all
  end

end
