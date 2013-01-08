class AddTermIdToLends < ActiveRecord::Migration
  def change
    add_column :lendings, :term_id, :integer
  end
end
