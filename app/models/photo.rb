class Photo
  include ActiveModel::Model

#attributes for photo search
  attr_accessor :id, :title, :description, :link_url, :thumbnail_url, :original_url


end