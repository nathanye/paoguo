class CreatePp1as < ActiveRecord::Migration[5.0]
  def change
    create_table :pp1as do |t|
      t.integer :user_id
      t.integer :pp1_id
      t.text :content

      t.timestamps
    end
  end
end
