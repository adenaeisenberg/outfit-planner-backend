class RemoveColumnDayFromOutfits < ActiveRecord::Migration[7.0]
  def change
    remove_column :outfits, :day
  end 
end
