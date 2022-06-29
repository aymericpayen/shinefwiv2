class ShowroomsController < ApplicationController
  def index
    @showrooms = Showroom.all
    @showroom_size = @showrooms.size
    @showroom_size = (@showroom_size/3) + 1
  end

  def new
    @showroom = Showroom.new
  end

  def create
    @showroom = Showroom.new(showroom_params)
    @showroom.save
    redirect_to showrooms_path(@showroom)
  end

  private

  def showroom_params
    params.require(:showroom).permit(:name, :description, :starting_from, :photo)
  end
end
