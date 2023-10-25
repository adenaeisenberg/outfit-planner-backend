class AddUserIdToBottoms < ActiveRecord::Migration[7.0]
  def change
    add_column :bottoms, :user_id, :integer
  end
end
