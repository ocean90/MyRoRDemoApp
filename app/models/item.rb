class Item < ActiveRecord::Base
	scope :available, where( :rating => 3 )
	scope :available2, where( 'rating > 2' )

	belongs_to :user
	has_many :lendings

	attr_accessible :name, :rating, :description, :user_id
	validates_length_of :name, :minimum=>1
	validate :correct_rating
	validate :correct_user

	def correct_user
		# http://apidock.com/rails/ActiveModel/Errors
		errors.add( :user_id, 'User ID not found!' ) unless User.exists? user_id
	end

	def correct_rating
		 errors.add( :rating, 'Raiting not correct' ) unless (1..5).step(1).include?(rating)
	end

end
