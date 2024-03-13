class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def dashboard
    @orders = Order.all.order(created_at: :desc)

  end

  def home
    redirect_to new_farmer_path if user_signed_in? && current_user.is_farmer? && current_user.farmer.nil?
  end

  def search
    @products = Product.all

    if params[:query].present?
      @products = @products.where("name ILIKE ?", "%#{params[:query]}%")
    end
  end
end
