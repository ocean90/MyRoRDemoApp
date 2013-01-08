class AddLendingStartToLends < ActiveRecord::Migration
  def change
    add_column :lendings, :lending_start, :datetime
  end
end
