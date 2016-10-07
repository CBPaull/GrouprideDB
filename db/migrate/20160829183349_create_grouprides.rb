class CreateGrouprides < ActiveRecord::Migration
  def change
    create_table :grouprides do |t|
      t.string :name
      t.string :description
      t.references :route, index: true
      t.references :user, index: true
      t.integer :group_limit
      t.time :meet_time
      t.time :ksu_time

      t.timestamps
    end
  end
end
