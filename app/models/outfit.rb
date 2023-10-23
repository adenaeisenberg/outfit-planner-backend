class Outfit < ApplicationRecord
  validates :day, presence: true
  validates :top, presence: true
  validates :bottom, presence: true

  belongs_to :user
  belongs_to :bottom
  belongs_to :top
end
