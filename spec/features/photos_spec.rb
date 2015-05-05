require "rails_helper"

RSpec.feature "Photos", :type => :feature do
  before {visit root_path}

  scenario "User click search without keyword get a message 'Please start to search.'" do

    fill_in "search", :with => ""
    click_button "Search"

    expect(page).to have_text("Please start to search.")
  end

  scenario "User type a valid keyword in search show an instraction viewing large image" do

      fill_in "search", :with => "cat"
      click_button "Search"

      expect(page).to have_text("Click a thumbnail image to view the larger size image.")

  end

  scenario "With valid keyword enter, the search result shown in pages" do

    fill_in "search", :with => "dog"
    click_button "Search"

    expect(page).to have_content("← Previous 1 2 3 4 5 6 7 8 9 10 Next →")
  end

  scenario "With valid keyword search, thumbnails are shown" do

    fill_in "search", :with => "butterfly"
    click_button "Search"

    expect(page).to have_selector("img")
  end


end

