class BottomsController < ApplicationController
  def index
    @bottoms = Bottom.all 
    render json: @bottoms
  end

  def show
    @bottom = Bottom.find_by(id: params[:id]) 
    render json: @bottom
  end

  def create
    @bottom = Bottom.create(
      name: params[:name],
      image_url: params[:image_url],
    )
    render json: @bottom 
  end

  def update
    @bottom = Bottom.find_by(id: params[:id])
    @bottom.update(
      name: params[:name] || @bottom.name,
      image_url: params[:image_url] || @bottom.image_url,
    )
    render json: @bottom 
  end

def destroy
  @bottom = Bottom.find_by(id: params[:id])
  @bottom.destroy 
  render json: { message: "Bottom has been removed from your wardrobe!"}
end
end
