class PaintingsController < ApplicationController
  before_action :set_painting, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @paintings = Painting.all
    respond_with(@paintings)
  end

  def show
    respond_with(@painting)
  end

  def new
    @painting = Painting.new
    respond_with(@painting)
  end

  def edit
  end

  def create
    @painting = Painting.new(painting_params)
    @painting.save
    respond_with(@painting)
  end

  def update
    @painting.update(painting_params)
    respond_with(@painting)
  end

  def destroy
    @painting.destroy
    respond_with(@painting)
  end

  private
    def set_painting
      @painting = Painting.find(params[:id])
    end

    def painting_params
      params.require(:painting).permit(:image, :name, :album_id)
    end
end
