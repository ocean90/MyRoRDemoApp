class Lending < ActiveRecord::Base
  attr_accessible :user_id, :item_id, :lending_end, :lending_start
  belongs_to :item
  belongs_to :user
end
