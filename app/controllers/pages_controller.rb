class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if current_user.is_farmer && current_user.farmer.nil?
      redirect_to new_farmer_path
    end
  end
end
