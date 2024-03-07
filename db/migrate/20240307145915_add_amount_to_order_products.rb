class AddAmountToOrderProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :order_products, :amount, :integer
  end
end
