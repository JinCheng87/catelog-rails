class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.text :email, null: false
      t.text :name, null: false
      t.text :password_digest, null: false

      t.timestamps
    end
  end
end