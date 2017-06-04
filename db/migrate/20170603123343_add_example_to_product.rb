class AddExampleToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :example, :text
  end
end
