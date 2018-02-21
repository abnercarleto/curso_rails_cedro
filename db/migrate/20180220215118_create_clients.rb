class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name, null: false
      t.string :identification_document, null: false
      t.date :birth_date, null: false
      t.string :phone_number
      t.text :notes

      t.timestamps
    end
  end
end
