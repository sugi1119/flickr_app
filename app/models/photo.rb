class Photo
  include ActiveModel::Model

  attr_accessor :id, :title, :description, :link_url, :thumbnail_url, :original_url

  # delegate :flickr_images, :allow_nil => true

  # def initialize(id:nil, title:nil, description:nil, link_url:nil, thumbnail_url:nil, original_url:nil)
  #   @id = params[:id]
  #   @title = params[:title]
  #   @description = params[:description]
  #   @link_url = params[:link_url]
  #   @thumbnail_url = params[:thumbnail_url]
  #   @original_url = params[:original_url]
  # end

end