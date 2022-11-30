class User < ApplicationRecord
  has_many :bookings
  has_many :pets, through: :bookings

  validates :open_id, presence: true, uniqueness: true
end
