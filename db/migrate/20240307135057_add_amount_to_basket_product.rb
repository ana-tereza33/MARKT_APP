class AddAmountToBasketProduct < ActiveRecord::Migration[7.1]
  def change
    add_column :basket_products, :amount, :integer
  end
end
