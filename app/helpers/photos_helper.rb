#Search function of flickr photo
module PhotosHelper
  require 'flickraw'

  # flickr api keys
    FlickRaw.api_key       = ENV["API_KEY"]
    FlickRaw.shared_secret = ENV["SHARED_SECRET"]
    flickr.access_token =   ENV["ACCESS_TOKEN"]
    flickr.access_secret = ENV["ACCESS_SECRET"]

  def get_flickr_images(text)
    thumbnail_size = "s" #small square 75x75
    medium_size = "n" # 300 on longest side

    flickr = FlickRaw::Flickr.new

    photos = flickr.photos.search(text: text, sort: "relevant", per_page: 500)


    @flickr_images = []
    photos.each do |photo|
      @flickr_images << Photo.new(
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

end
