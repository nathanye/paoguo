class CreatePp1s < ActiveRecord::Migration[5.0]
  def change
    create_table :pp1s do |t|
      t.integer :user_id
      t.string :date
      t.string :week
      t.string :yinli
      t.string :weather
      t.string :begin_time
      t.string :finish_time
      t.string :from_where
      t.string :how_to_go
      t.string :main_place
      t.string :run_begin_time
      t.string :run_finish_time
      t.string :how_long_time
      t.integer :how_long_kilos
      t.string :stretch_or_not
      t.string :how_to_go_back
      t.string :back_to_where
      t.string :about_people
      t.string :about_ideas
      t.string :about_serendipities
      t.string :about_others

      t.timestamps
    end
  end
end
