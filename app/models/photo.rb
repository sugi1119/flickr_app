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

class Photo < ActiveRecord::Base
  validates :photo_id, presence: true
  validates :photo_url, presence: true
  validates :owner_name, presence: true
end



