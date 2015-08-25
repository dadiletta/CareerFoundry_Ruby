require 'rails_helper'

RSpec.describe Comment, type: :model do
  #context "new comment" do
  #	before {@comment = Comment.new(body: "test", user_id: 1, rating: 1, product_id: 1)}
    
  #	it "validates content correctly" do
  #		expect(@comment).to be_valid
  #	end
  #end

  context "no body" do
  	before {@comment = Comment.new(body: nil, user_id: 1, rating: 1, product_id: 1)}

  	it "throws error" do
  		expect(@comment).to_not be_valid
  	end
  end

  context "no user" do
  	before {@comment = Comment.new(body: "test", user_id: nil, rating: 1, product_id: 1)}

  	it "throws error" do
  		expect(@comment).to_not be_valid
  	end
  end

  context "no rating" do
  	before {@comment = Comment.new(body: "test", user_id: 1, rating: nil, product_id: 1)}

  	it "throws error" do
  		expect(@comment).to_not be_valid
  	end
  end

end