class CreateRoutes < ActiveRecord::Migration
  def change
    create_table :routes do |t|
      t.string :name
      t.string :description
      t.integer :difficulty
      t.integer :speed
      t.references :address, index: true
      t.references :user, index: true
      t.json :route

      t.timestamps
    end
  end
end
