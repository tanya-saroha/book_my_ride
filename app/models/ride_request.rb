class RideRequest < ApplicationRecord
  belongs_to :user
  belongs_to :ride
end
