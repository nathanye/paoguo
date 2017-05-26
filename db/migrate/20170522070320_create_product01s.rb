class CreateProduct01s < ActiveRecord::Migration[5.0]
  def change
    create_table :product01s do |t|
      t.integer :count, default: 0
      t.timestamps
    end
  end
end
