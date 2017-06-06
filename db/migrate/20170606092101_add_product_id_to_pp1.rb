class AddProductIdToPp1 < ActiveRecord::Migration[5.0]
  def change
    add_column :pp1s, :product_id, :integer
  end
end
