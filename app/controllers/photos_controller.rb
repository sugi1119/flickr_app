
class PhotosController < ApplicationController
 include PhotosHelper


  def home

  end

  def limage
    @data = params[:data]
    @id = params[:id]
    @title = params[:title]

    items = {
      :limage_data => @data,
      :limage_id => @id,
      :limage_title => @title
    }

    respond_to do |format|
      format.html {}
      format.js {render :json => items }
      format.json {render :json => items }
    end

  end

# Search photos and arrange paginate
  def search

    if params[:search].blank?
      flash[:notice]= "Please start search."
    else
      search = params[:search]
      get_flickr_images(search)
      @images = @flickr_images.paginate(page: params[:page], per_page: 50)

    end

    render :home
  end


end












