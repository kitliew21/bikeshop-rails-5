require 'rails_helper'
 
describe Product do

	before do	  
	  @product = FactoryGirl.create(:product)
  	@user = FactoryGirl.create(:user)
  	3.times { FactoryGirl.create :comment, product: @product, rating: 3 }
	end

	it "returns the average rating of all comments" do
		expect(@product.average_rating).to eq 3
	end

	it "is not valid" do
		expect(Product.new(description: "Nice bike")).not_to be_valid
	end

end 