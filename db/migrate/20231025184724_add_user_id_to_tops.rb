class AddUserIdToTops < ActiveRecord::Migration[7.0]
  def change
    add_column :tops, :user_id, :integer
  end
end
