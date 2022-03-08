class CreateRabbits < ActiveRecord::Migration[7.0]
  def change
    create_table :rabbits do |t|
      t.string :name
      t.integer :purity
      t.date :birth_date
      t.decimal :weight
      t.references :breed, null: false, foreign_key: true

      t.timestamps
    end
  end
end
