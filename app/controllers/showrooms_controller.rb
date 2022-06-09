class ShowroomsController < ApplicationController
  def index
    @showrooms = Showroom.all
  end
end
