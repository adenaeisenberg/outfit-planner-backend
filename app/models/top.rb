class Top < ApplicationRecord
  has_many :bottoms, :through => :outfits
  belongs_to :user 
  
end
