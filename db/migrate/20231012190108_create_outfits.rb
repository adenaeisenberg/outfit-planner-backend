class CreateOutfits < ActiveRecord::Migration[7.0]
  def change
    create_table :outfits do |t|
      t.string :day
      t.integer :top_id
      t.integer :bottom_id
      t.integer :user_id

      t.timestamps
    end
  end
end
