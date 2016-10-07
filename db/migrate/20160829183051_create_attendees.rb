class CreateAttendees < ActiveRecord::Migration
  def change
    create_table :attendees do |t|
      t.references :user, index: true
      t.references :groupride, index: true

      t.timestamps
    end
  end
end
