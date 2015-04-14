class Photo
  include ActiveModel::Model

  attr_accessor :id, :title, :description, :link_url, :thumbnail_url, :original_url


end