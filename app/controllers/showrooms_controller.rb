class ShowroomsController < ApplicationController
  def index
    @showrooms = Showroom.all
    @showroom_size = @showrooms.size
    @showroom_size = (@showroom_size/3) + 1
  end
end
