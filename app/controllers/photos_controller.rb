
class PhotosController < ApplicationController
 include PhotosHelper
 # respond_to :html, :xml, :json


  def home

  end

  def limage
    items = {
      :limage_data => params[:data],
      :limage_id => params[:id],
      :limage_title => params[:title]
    }

    respond_to do |format|
      format.html {}
      format.js {render :json => items }
      format.json {render :json => items }
    end

    # respond_with(@id)
  end


  def search
    # raise 'errrr in search'
    if params[:search].blank?
      flash[:notice]= "Please start search."
    else
      search = params[:search]
      get_flickr_images(search)

    end

    # size = @flickr_images.count
    # @flickr_images = Array.paginate(page: params[:page], per_page: 5)

    render :home
  end


end












