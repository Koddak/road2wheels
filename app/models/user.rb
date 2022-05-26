class User < ApplicationRecord
  has_many :motos, dependent: :destroy
  has_one_attached :photo
  has_many :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def find_bookings
    Booking.joins(:moto).where("motos.user_id = #{id}")
  end
end
