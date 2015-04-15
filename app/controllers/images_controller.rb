class ImagesController < ApplicationController
  before_action :set_image, only: [:show, :update, :destroy]

  def index
    @images = Image.all
    render "/images"
  end

  def show
    render "/image"
  end

  def create
    @image = Image.new(image_params)

    if @image.save
      render_success("Image was successfully created.")
    else
      render_error(@image.descriptive_error)
    end
  end

  def update
    if @image.update(image_params)
      render_success("Image was successfully updated.")
    else
      render_error(@image.descriptive_error)
    end
  end

  def destroy
    @image.destroy
    render_success("Image was successfully destroyed.")
  end

  private

  def set_image
    @image = Image.find(params[:id])
  end

  def image_params
    params.require(:image).permit(Image::PERMITTED_PARAMS)
  end
end
