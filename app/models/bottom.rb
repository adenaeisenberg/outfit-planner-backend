class Bottom < ApplicationRecord
  has_many :tops, though: :outfits
end
