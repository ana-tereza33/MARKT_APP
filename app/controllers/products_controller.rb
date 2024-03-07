class ProductsController < ApplicationController
  def create
    @product = Product.new(product_params)
    @product.user = current_user
    @product.save!
    redirect_to product_path(@product)
  end
end
