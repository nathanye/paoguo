class AddProductIdToCartItem < ActiveRecord::Migration[5.0]
  def change
    add_column :cart_items, :product_id, :integer
  end
end
