class RenameTermIdToItemIdInLending < ActiveRecord::Migration
  def change
  	rename_column( :lendings, :term_id, :item_id)
  end
end
