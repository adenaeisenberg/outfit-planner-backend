class ChangeTableFromImageToImageUrl < ActiveRecord::Migration[7.0]
  def change
    rename_column :tops, :image, :image_url
  end
end
