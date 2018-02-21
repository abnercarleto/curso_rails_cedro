class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.integer :amount, null: false
      t.decimal :unit_price, null: false
      t.text :description
      t.text :technical_details

      t.timestamps
    end
  end
end
