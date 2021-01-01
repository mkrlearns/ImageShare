class ImagesController < ApplicationController
  before_action :redirect_if_not_logged_in

  def new
    @image = Image.new
  end

  def create
    @image = current_user.images.build(post_params)
    if @image.save
      redirect_to images_path
    else
      render :new
    end
  end

  private

  def image_params
    params.require(:image).permit(:title, :url)
  end
end
