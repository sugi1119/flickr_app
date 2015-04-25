require 'rails_helper'

module PhotosHelper
  def get_flickr_images
  end
end

RSpec.configure {|c|c.include PhotosHelper}

RSpec.describe PhotosController, type: :controller do
  let(:get_flickr_images) {'get search result'}

  describe "search" do
    specify { expect(get_flickr_images).to eq 'get search result'}
  end
end