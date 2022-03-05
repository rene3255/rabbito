class CreateSupplies < ActiveRecord::Migration[7.0]
  def change
    create_table :supplies do |t|
      t.date :acquisition_date
      t.integer :quantity
      t.string :description
      t.decimal :cost

      t.timestamps
    end
  end
end
