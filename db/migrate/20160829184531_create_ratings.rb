class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :rank
      t.references :user, index: true
      t.references :route, index: true

      t.timestamps
    end
  end
end
