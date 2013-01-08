class AddUserIdToLends < ActiveRecord::Migration
  def change
    add_column :lendings, :user_id, :integer
  end
end
