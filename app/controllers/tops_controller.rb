class TopsController < ApplicationController
  def index
    @tops = Top.all 
    render json: @tops
  end

  def show
    @top = Top.find_by(id: params[id]) #
    render json: @top
  end

  def create
    @top = Top.create(
      name: params[:name],
      image_url: params[:image_url],
    )
    render json: @top 
  end

  def update
    @top = Top.find_by(id: params[:id])
    @top.update(
      name: params[:name] || @top.name,
      image_url: params[:image_url] || @top.image_url,
    )
    render json: @top 
  end

def destroy
  @top = Top.find_by(id: params[:id])
  @top.destroy 
  render json: { message: "Top has been removed from your wardrobe!"}
end

end
