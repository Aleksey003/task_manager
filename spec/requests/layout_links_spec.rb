require 'spec_helper'

describe "LayoutLinks" do
  describe "GET /layout_links" do
    it "works! (should be successful)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit root_path
      response.status.should be(200)
    end
  end
end
