require 'rails_helper'

RSpec.describe "Photos", type: :request do

subject{page}

  describe "Home page" do
    before {visit root_path}

      it "works!" do
        get root_path
        expect(response).to have_http_status(200)
      end

      it {should have_content('Flickr Photo Search!')}
      it {should have_title('Flickr Photo Search | Home')}
  end


end






