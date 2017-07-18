class CreateProducts<ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.text :name, null: false
      t.float :price, null: false
      t.text :sku, null: false
      t.belongs_to :manufacture, null: false
    end
  end
end