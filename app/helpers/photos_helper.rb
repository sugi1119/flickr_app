module PhotosHelper
  require 'flickraw'
    FlickRaw.api_key       = ENV["API_KEY"]
    FlickRaw.shared_secret = ENV["SHARED_SECRET"]
    flickr.access_token =   ENV["ACCESS_TOKEN"]
    flickr.access_secret = ENV["ACCESS_SECRET"]

#   def get_flickr_images(tag)
#     thumbnail_size = "m"
#     original_size = "z"

#     photos = flickr.photos.search(tags: tag, sort: "relevance", per_page: 20)

#     flickr_images = []
#     photos.each do |photo|
#       flickr_images << FlickrImage.new(
#         photo_id: photo["photo_id"],
#         title: photo["title"],
#         description: "",
#         link_url: "http://www.flickr.com/photos/#{photo["owner"]}/#{photo["photo_id"]}",
#         thumbnail_url: "http://farm#{photo["farm"]}.static.flickr.com/#{photo["server"]}/#{photo["photo_id"]}_#{photo["secret"]}_#{thumbnail_size}.jpg",
#         original_url: "http://farm#{photo["farm"]}.static.flickr.com/#{photo["server"]}/#{photo["photo_id"]}_#{photo["secret"]}_#{original_size}.jpg"
#       )
#     end

#     flickr_images
#   end

# class FlickrImage
#   def initialize(photo_id:nil, title:nil, description:nil, link_url:nil, thumbnail_url:nil, original_url:nil)
#     @photo_id = photo_id
#     @title = title
#     @description = description
#     @link_url = link_url
#     @thumbnail_url = thumbnail_url
#     @original_url = original_url
#   end

#   attr_accessor :photo_id, :title, :description, :link_url, :thumbnail_url, :original_url
# end

# # get_flickr_images("mountain").each do |image|
# #   puts image.title
# #   puts image.link_url
# # end
# pry "debugger"

end
