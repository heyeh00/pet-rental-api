class Pet < ApplicationRecord
  has_many :bookings
  has_many :users, through: :bookings
  
  validates :name, :breed, :gender, :age, presence: true
end
