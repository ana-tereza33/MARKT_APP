class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def dashboard
    @orders = Order.all

  def home
    redirect_to new_farmer_path if user_signed_in? && current_user.is_farmer? && current_user.farmer.nil?
  end
end
