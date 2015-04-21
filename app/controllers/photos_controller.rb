
class PhotosController < ApplicationController
 include PhotosHelper


  def home

  end

  def largeimage

    @id = params[:id]


    # items = {
    #   :limage_data => @data,
    #   :limage_id => @id,
    #   :limage_title => @title
    # }

    respond_to do |format|
      format.html {}
      format.js {render :json => @id }
      format.json {render :json => @id }
    end

  end

# Search photos and arrange paginate
  def search

    if params[:search].blank?
      flash[:notice]= "Please start search."
    else
      search = params[:search]
      get_flickr_images(search)
      @images = @flickr_images.paginate(page: params[:page], per_page: 20)

    end

    render :home
  end


end












