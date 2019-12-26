class User < ApplicationRecord

  validates :first_name, :last_name, :contact_number, :email, presence: true
  validates :contact_number, uniqueness: true

  has_many :ride_requests

  before_save do
    self.first_name = self.first_name.titleize
    self.last_name  = self.last_name.titleize
  end

end
