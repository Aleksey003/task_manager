require 'spec_helper'

describe ProgectsController do
	describe "Get 'new'" do
		it "should be successful" do
			get 'new'
			 response.should be_success
		end
	end
end
