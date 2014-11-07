class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    photo = Photo.find(params[:id])
    @caption = photo.caption
    @source = photo.source
  end

  def new_form
  end

  def create_row
    photo = Photo.new
    photo.caption = params[:the_caption]
    photo.source = params[:the_source]
    photo.save
  end

  def destroy
    photo = Photo.find(params[:id])
    photo.destroy
  end

  def edit_form
    @photo = Photo.find(params[:id])
  end

  def update_row
    photo = Photo.find(params[:id])
    @caption = photo.caption = params[:the_caption]
    @source = photo.source = params[:the_source]
    photo.save
    render("index")
  end
end
