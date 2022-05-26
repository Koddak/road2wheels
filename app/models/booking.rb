class Booking < ApplicationRecord
  belongs_to :moto
  belongs_to :user
end
