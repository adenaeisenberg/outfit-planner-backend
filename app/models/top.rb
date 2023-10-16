class Top < ApplicationRecord
  has_many :bottoms, :through => :outfits
end
