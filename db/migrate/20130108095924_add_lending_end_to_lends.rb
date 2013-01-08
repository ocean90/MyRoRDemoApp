class AddLendingEndToLends < ActiveRecord::Migration
  def change
    add_column :lendings, :lending_end, :datetime
  end
end
