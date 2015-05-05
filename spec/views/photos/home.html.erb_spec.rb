require 'rails_helper'

RSpec.describe "photos/home", type: :view do

  it "renders a form to search photos" do
    assign(:search, double("Search"))
    render
      expect(rendered).to  have_selector("input[type=submit][value='Search']")
  end

  # it "displays images" do
  #   @images.each do |image|
  #     response.should have_selector("a")
  #   end
  #   end

end

