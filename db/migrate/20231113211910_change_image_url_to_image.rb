class ChangeImageUrlToImage < ActiveRecord::Migration[7.0]
  def change
    rename_column :tops, :image_url, :image
  end
end
