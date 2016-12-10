require 'rails_helper'
 
describe Product do

	before do	  
	  @product = FactoryGirl.create(:product)
  	  @user = FactoryGirl.create(:user)
	  @prouct.comments.push(FactoryGirl.build(:comment))
 	  @product.comments.push(FactoryGirl.build(:comment))
 	  @product.comments.push(FactoryGirl.build(:comment))
	end

	it "returns the average rating of all comments" do
		expect(@product.average_rating).to eq 1
	end

	it "is not valid" do
		expect(Product.new(description: "Nice bike")).not_to be_valid
	end

end 