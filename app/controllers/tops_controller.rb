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
end
