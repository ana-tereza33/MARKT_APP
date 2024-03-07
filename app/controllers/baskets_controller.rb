class BasketsController < ApplicationController
  def new
    @basket = Basket.new
  end

  def update
    @basket = Basket.find(params[:id])
    params[:basket_product].each do |hash|
      unless hash[:amount] == 0 || hash[:amount] == nil
        basket = BasketProduct.new(basket_id: @basket.id, product_id: hash[:product_id], amount: hash[:amount])
        basket.save!
      end
    end
    redirect_to new_basket_order_path(@basket)
  end
end
