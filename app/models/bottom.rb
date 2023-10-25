class Bottom < ApplicationRecord
  has_many :tops, :through => :outfits
  belongs_to :user 
end
