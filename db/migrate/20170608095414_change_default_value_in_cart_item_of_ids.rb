class ChangeDefaultValueInCartItemOfIds < ActiveRecord::Migration[5.0]
  def change
    change_column_default :cart_items, :product_id, 0
    change_column_default :cart_items, :pp1_id, 0
  end
end
