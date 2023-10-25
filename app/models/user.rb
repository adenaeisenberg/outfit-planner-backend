class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :outfits 
  has_many :tops
  has_many :bottoms
end
