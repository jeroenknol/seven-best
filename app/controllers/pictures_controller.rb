class PicturesController < ApplicationController
  before_action :find_picture, only: [:show, :edit, :update, :destroy]

  # GET /pictures
  def index
    @pictures = Picture.all
  end

  # GET /pictures/:id
  def show
  end

  # GET /pictures/new
  def new
    @picture = Picture.new
  end

  # GET /pictures/:id/edit
  def edit
  end

  # POST /pictures
  def create
    @picture = Picture.new(picture_params)

    if @picture.save
      redirect_to @picture
    else
      render 'new'
    end
  end

  # PATCH /pictures/:id
  def update
    if @picture.update_attributes(picture_params)
      redirect_to @picture
    else
      render 'edit'
    end
  end

  # DELETE /pictures/:id
  def destroy
    @picture.destroy

    redirect_to pictures_path
  end

  private
    def find_picture
      @picture = Picture.find(params[:id])
    end

    def picture_params
      params.require(:picture).permit(:image_url, :caption, :taken_on, :user_id)
    end
end
