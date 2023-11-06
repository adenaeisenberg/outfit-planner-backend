class OutfitsController < ApplicationController
  def index
    @outfits = current_user.outfits.all.order('day ASC')
    # @outfits = Outfit.order('day ASC')
    render :index 
    # render json: @outfits
  end

  def show
    @outfit = current_user.outfits.find_by(id: params[:id])
    render :show 
    # render json: @outfit
  end

  def create
    @outfit = Outfit.create(
      day: params[:day],
      top_id: params[:top_id],
      bottom_id: params[:bottom_id],
      user_id: current_user.id
    )
    render json: @outfit 
  end

  def update
    @outfit = Outfit.find_by(id: params[:id])
    @outfit.update(
      day: params[:day] || @outfit.day,
      top_id: params[:top_id] || @outfit.top_id,
      bottom_id: params[:bottom_id] || @outfit.bottom_id,
    )
    render json: @outfit 
  end

def destroy
  @outfit = Outfit.find_by(id: params[:id])
  @outfit.destroy 
  render json: { message: "Outfit has been removed from your wardrobe!"}
end

end
