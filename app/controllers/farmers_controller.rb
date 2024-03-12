class FarmersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @farmers = Farmer.all
  end

  def show
    @farmer = Farmer.find(params[:id])
    @geolocation_hash = geolocation_hash(@farmer)

    if current_user
      if current_user.basket.nil?
        @basket = Basket.new
        @basket.user = current_user
        @basket.save!
      else
        @basket = Basket.find(current_user.basket.id)
      end
    end
  end

  def new
    @farmer = Farmer.new
  end

  def create
    @farmer = Farmer.new(farmer_params)
    @farmer.user = current_user
    @farmer.save!
    redirect_to root_path
  end

  def edit
    @farmer = Farmer.find(params[:id])
  end

  def update
    @farmer = Farmer.find(params[:id])
    @farmer.update(farmer_params)
  end

  private

  def geolocation_hash(farmer)
    {
      lat: farmer.latitude,
      lng: farmer.longitude,
      # If you want a costum marker do it here 👇🏻
      marker_html: render_to_string(partial: "marker", locals: { farmer: farmer })
    }
  end

  def farmer_params
    params.require(:farmer).permit(
      :name, :address, :latitude, :longitude,
      :description_profile, :description_farm,
      :main_photo, sub_photos: []
    )
  end
end
