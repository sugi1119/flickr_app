require "rails_helper"

RSpec.feature "Photos", :type => :feature do
  scenario "User click search without keyword" do
    visit "/"

    fill_in "search", :with => ""
    click_button "Search"

    expect(page).to have_text("Please start to search.")
  end
end
