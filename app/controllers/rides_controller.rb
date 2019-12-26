class RidesController < ApplicationController
  def index
    @count = Ride.count
    @rides = Ride.all.includes(:driver, :ride_requests)
  end
end
