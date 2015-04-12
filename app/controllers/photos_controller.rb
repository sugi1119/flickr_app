class PhotosController < ApplicationController
  def home

  end

  def show
  end

  private
  def photo_params
    params.require(:photo).permit(:photo_id, :photo_url, :owner_name)
  end
end
