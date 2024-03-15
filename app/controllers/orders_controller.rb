class OrdersController < ApplicationController
  def new
    @order = Order.new
    @basket = Basket.find(params[:basket_id])
    @amount = 0
     @basket.basket_products.each do |basket_product|
      unless basket_product.amount == 0 || basket_product.amount == nil
        product = Product.find(basket_product.product_id)
        sub_amount = (product.price * basket_product.amount)
        @amount += sub_amount
      end
     end
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    @order.save!

    @basket = Basket.find(params[:basket_id])
    @basket.basket_products.each do |basket_product|
      order_product = OrderProduct.new(order_id: @order.id, product_id: basket_product.product_id, amount: basket_product.amount)
      order_product.save!
    end
    @basket.destroy

    redirect_to farmers_path
  end

  private

  def order_params
    params.require(:order).permit(:total)
  end
end
