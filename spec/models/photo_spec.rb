# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  photo_id   :string
#  photo_url  :string
#  owner_name :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Photo, type: :model do
  #check photo model params
  before {@photo = Photo.new(photo_id: "45678", photo_url: "https://www.flickr.com/photos/foo123/45678", owner_name: "foo123")}
  subject{@photo}
  it {should respond_to(:photo_id)}
  it {should respond_to(:photo_url)}
  it {should respond_to(:owner_name)}
end



