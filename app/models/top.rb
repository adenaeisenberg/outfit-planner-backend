class Top < ApplicationRecord
  has_many :bottoms, though: :outfits
end
