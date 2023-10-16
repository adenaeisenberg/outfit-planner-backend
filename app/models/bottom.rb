class Bottom < ApplicationRecord
  has_many :tops, :through => :outfits
end
