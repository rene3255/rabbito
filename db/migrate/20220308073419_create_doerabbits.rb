class CreateDoerabbits < ActiveRecord::Migration[7.0]
  def change
    create_table :doerabbits do |t|
      t.date :breed_date
      t.string :buck
      t.date :nest_box_date
      t.date :due_date
      t.date :kindled_date
      t.boolean :born_alive
      t.boolean :born_dead
      t.integer :kits_weaned
      t.decimal :eight_week_weight
      t.string :comments
      t.references :rabbit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
