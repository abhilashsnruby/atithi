class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.integer :room_no
      t.integer :capacity
      t.string :type_of_sharing
      t.integer :floor_id

      t.timestamps
    end
  end
end
