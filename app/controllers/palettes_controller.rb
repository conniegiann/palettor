class PalettesController < ApplicationController
  def edit
  end

  def new
    @palette = Palette.new
  end

  def create
    palette = Palette.create palette_params
    @current_user.palettes << palette
    redirect_to palette
  end

  def index
  end

  def show
    @palette = Palette.find params[:id]
  end

  private
  def palette_params
    params.require(:palette).permit(:name, :style, :description, :color1, :color2, :color3, :color4, :color5)
  end

end
