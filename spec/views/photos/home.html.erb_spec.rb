require 'rails_helper'

RSpec.describe "photos/home", type: :view do

  it "renders a form to search photos" do
    assign(:search, double("Search"))
    render
      expect(rendered).to  have_selector("input[type=submit][value='Search']")
  end

  # describe 'GET#home' do
  #   it "renders the :home view" do
  #     get :home
  #     expect(response).to render_template :home
  #   end
  # end

end