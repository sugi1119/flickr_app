
class PhotosController < ApplicationController
 include PhotosHelper


  def home
    # if params[:search]
    #   search = params[:search]
    #   get_flickr_images(search)
    # else
    #   flash[:notice]= "Please start search."
    # end
  end

  def search
    # raise 'err at search'
    if params[:search]
      search = params[:search]
      get_flickr_images(search)
    else
      flash[:notice]= "Please start search."
    end

    render :home
  end

  #   if @photos == nil
  #     @search = search
      # @photos = get_flickr_images(@search)

        # flash[:notice]= "Please start search."
      # else
      #   @photos
      # end


  # end

  # def search
  #   if @photos == nil
  #     @search = search
  #     @photos = get_flickr_images(@search)
  #       # flash[:notice]= "Please start search."
  #     else
  #       @photos
  #     end

  #     render :home
  # end


  def show
    raise "error"


    # create a flickr client (get an API key from http://api.flickr.com/services/api/)
    # flickr = FlickRaw::Flickr.new
    # @search = "cat"

    # @result = flickr.photos.getRecent(api_key: FlickRaw.api_key, text: @search, per_page: 5, page: 1)

    # check = []
    # @result.each do |r|
    #   check << r.id
    # end

    # really = check.to_json
    # result = @result.to_json

    #  raise 'err2'
  end

  def new
    raise 'err new'
  end

  def edit
    raise "error edit "
  end

  def create
  end

  def update
    raise "error update"
  end

  # private
  # def photo_params
  #   params.require(:photo).permit(:photo_id, :text, :description, :link_url, :thumbnail_url, :original_url, :owner)
  # end
end

  # def get_flickr_images(search)
  #   thumbnail_size = "m"
  #   original_size = "z"

  #   photos = flickr.photos.search(text: search, sort: "relevance", per_page: 20, page: 10)

  #   flickr_images = []
  #   photos.each do |photo|
  #     flickr_images << FlickrImage.new(
  #       id: photo["photo_id"],
  #       title: photo["title"],
  #       description: "",
  #       link_url: "http://www.flickr.com/photos/#{image["owner"]}/#{image["id"]}",
  #       thumbnail_url: "http://farm#{image["farm"]}.static.flickr.com/#{image["server"]}/#{image["id"]}_#{image["secret"]}_#{thumbnail_size}.jpg",
  #       original_url: "http://farm#{image["farm"]}.static.flickr.com/#{image["server"]}/#{image["id"]}_#{image["secret"]}_#{original_size}.jpg"
  #     )
  #   end

  #   flickr_images
  # end

  # class FlickrImage
  #   attr_accessor :photo_id, :title, :description, :link_url, :thumbnail_url, :original_url

  #   def initialize(photo_id:nil, title:nil, description:nil, link_url:nil, thumbnail_url:nil, original_url:nil)
  #     @id = photo_id
  #     @title = title
  #     @description = description
  #     @link_url = link_url
  #     @thumbnail_url = thumbnail_url
  #     @original_url = original_url
  #   end

  # end

  # def search
  #   @search = search
  #   @photos = get_flickr_images(@search)

  # #     render :home
  #  end




#     @query = query

#     $.getJSON('https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=FlickRaw.api_key&text=#{@query}&per_page=500&page=10&format=json&jsoncallback=?', process_images);


# 'https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=df52b9fa8e1632a530e801c286f20f7c&user_id=&text=+#{@query}+&per_page=10&format=json&nojsoncallback=1&auth_token=72157651458306607-65d289bdbc50eb21&api_sig=502dc937fefccb0fe6cc47b889aaab7a'

#  https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=4c92af21d5401b2395c05e6696a4f676&user_id=&text=cat&per_page=10&format=json&nojsoncallback=?





