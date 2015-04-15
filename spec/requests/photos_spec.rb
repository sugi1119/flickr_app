require 'rails_helper'

RSpec.describe "Photos", type: :request do

subject{page}

  describe "Home page" do
    before {visit root_path}

      it "works!" do
        get root_path
        expect(response).to have_http_status(200)
      end

      it {should have_content('flickr photo search')}
      it {should have_title('Flickr Photo Search | Home')}
  end

end
  # end

  # describe "Home page" do
  #   before :each do
  #   it "shows the search result" do
  #     @photos = get_flickr_images(search)
  #   end

  # end

  # describe "Show page" do
  #   before {visit root_path}
  #   it "goes show page" do
  #     get photos_show_path
  #     expect(response).to have_http_status(200)
  #   end
  # end



