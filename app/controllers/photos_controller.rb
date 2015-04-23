
class PhotosController < ApplicationController
 include PhotosHelper
 respond_to :html, :xml, :json

  def home

  end

  def largeimage

    choice = {
      :largeimageurl =>  params[:limageurl],
      :largeimageid =>   params[:limageid],
      :largeimagetitle =>   params[:limagetitle]
    }

    respond_to do |format|
      format.html {}
      format.js {render :json => choice }
      format.json {render :json => choice }
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












