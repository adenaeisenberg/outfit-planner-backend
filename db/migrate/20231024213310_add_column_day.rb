class AddColumnDay < ActiveRecord::Migration[7.0]
  def change
    add_column :outfits, :day, :date
  end
end
