class CreateManufacturers < ActiveRecord::Migration[5.0]
  def change
    create_table :manufacturers do |t|
      t.text :name, null: false
      t.text :description, null: false
      
      t.timestamps
    end
  end
end