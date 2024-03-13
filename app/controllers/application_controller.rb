class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_basket, unless: :devise_controller?
  before_action :configure_permitted_parameters, if: :devise_controller?

  # protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :address, :is_farmer, :title, :description_profile, :description_farm])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password, :remember_me])
  end

  def set_basket
    if current_user&.basket.nil?
      @basket = Basket.create(user: current_user)
    else
      @basket = current_user.basket
    end
  end
end
