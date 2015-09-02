require 'rails_helper'

describe User do

	context "User created" do

        before {@user = FactoryGirl.build :user}

		it "is a valid user" do
			expect(@user).to be_valid
		end

		#it "Should return full name" do
        #    expect(@user.name).to eq("Joe Smith")
		#end

		it "sets default admin to nil" do
			expect(@user.admin).to eq(false)
		end
	end


    #context "first_name missing" do
	#	before {@user = User.create(first_name: nil, last_name: "Smith", email: "joe@smith.com", password: "zebra993")}

	#	it "throws error" do
	#		expect(@user).to_not be_valid
	#	end
    #end
end
