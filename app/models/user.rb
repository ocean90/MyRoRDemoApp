class User < ActiveRecord::Base
  attr_accessible :password, :username

  has_many :items,  :dependent => :delete_all
end
