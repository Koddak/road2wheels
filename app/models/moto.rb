class Moto < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings, dependent: :destroy
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  include PgSearch::Model
  pg_search_scope :search_by_model_and_adress,
    against: [ :model, :address, :brand ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
