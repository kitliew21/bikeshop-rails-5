class Product < ApplicationRecord
  has_many :comments
  has_many :orders
  validates_presence_of :name, :description, :price

  	def highest_rating_comment
  		comments.rating_desc.first
	end

	def lowest_rating_comment
		comments.rating_asc.first
	end

	def average_rating
  		comments.average(:rating).to_f
	end
	
	#validates :name, presence: true
end

