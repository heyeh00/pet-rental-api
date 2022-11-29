class User < ApplicationRecord
  has_many :bookings
  has_many :pets, through: :bookings

  validates :name, presence: true
  validates :open_id, presence: true, uniqueness: true
  validates :image_url, presence: true
  validates :gender, presence: true

end
