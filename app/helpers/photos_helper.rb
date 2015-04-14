module PhotosHelper
  require 'flickraw'
    FlickRaw.api_key       = ENV["API_KEY"]
    FlickRaw.shared_secret = ENV["SHARED_SECRET"]
    flickr.access_token =   ENV["ACCESS_TOKEN"]
    flickr.access_secret = ENV["ACCESS_SECRET"]

  def get_flickr_images(text)
    thumbnail_size = "s" #small square 75x75
    medium_size = "z" #medium 640, 640 on long side

    flickr = FlickRaw::Flickr.new

    photos = flickr.photos.search(text: text, sort: "relevance", per_page: 20, page: 5)

    @flickr_images = []
    photos.each do |photo|
      flickr_images << Photo.new(
        id: photo["id"],
        title: photo["title"],
        description: "",
        link_url: "http://www.flickr.com/photos/#{photo["owner"]}/#{photo["id"]}",
        thumbnail_url: "http://farm#{photo["farm"]}.staticflickr.com/#{photo["server"]}/#{photo["id"]}_#{photo["secret"]}_#{thumbnail_size}.jpg",
        original_url: "http://farm#{photo["farm"]}.staticflickr.com/#{photo["server"]}/#{photo["id"]}_#{photo["secret"]}_#{medium_size}.jpg"
      )
    end

    @flickr_images
  end

# class FlickrImage
  # def initialize(id:nil, title:nil, description:nil, link_url:nil, thumbnail_url:nil, original_url:nil)
  #   @id = id
  #   @title = title
  #   @description = description
  #   @link_url = link_url
  #   @thumbnail_url = thumbnail_url
  #   @original_url = original_url
  # end

  # attr_accessor :id, :title, :description, :link_url, :thumbnail_url, :original_url


# # get_flickr_images("mountain").each do |image|
# #   puts image.title
# #   puts image.link_url
# # end
# pry "debugger"

end
