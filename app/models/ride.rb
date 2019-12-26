class Ride < ApplicationRecord
  belongs_to :driver
  belongs_to :cab

  has_many :ride_requests

  def driver_name
    driver.first_name + " " + driver.last_name
  end
end
