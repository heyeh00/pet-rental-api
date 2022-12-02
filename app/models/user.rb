class User < ApplicationRecord
  has_many :pets
  has_many :bookings
  has_many :pets, through: :bookings
  has_many :pets

  validates :open_id, presence: true
end
