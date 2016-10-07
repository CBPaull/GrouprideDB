class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :motorcycles
      t.string :experience
      t.string :password_digest
      t.text :description
      t.references :address, index: true

      t.timestamps
    end
  end
end
