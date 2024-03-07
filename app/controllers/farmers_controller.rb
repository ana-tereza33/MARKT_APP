class FarmersController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @farmers = Farmer.all
  end

  def show
    @farmer = Farmer.find(params[:id])
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

  def farmer_params
    params.require(:farmer).permit(:name, :description, :address)
  end
end
