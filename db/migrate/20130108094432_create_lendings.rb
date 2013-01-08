class CreateLendings < ActiveRecord::Migration
  def change
    create_table :lendings do |t|

      t.timestamps
    end
  end
end
