class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @photos = Photo.all
    respond_with(@photos)
  end

  def show
    respond_with(@photo)
  end

  def new
    @photo = Photo.new
    respond_with(@photo)
  end

  def edit
  end

  def create
    @photo = Photo.new(photo_params)
    flash[:notice] = 'Photo was successfully created.' if @photo.save
    respond_with(@photo)
  end

  def update
    flash[:notice] = 'Photo was successfully updated.' if @photo.update(photo_params)
    respond_with(@photo)
  end

  def destroy
    @photo.destroy
    respond_with(@photo)
  end

  private
    def set_photo
      @photo = Photo.find(params[:id])
    end

    def photo_params
      params.require(:photo).permit(:title, :image)
    end
end
