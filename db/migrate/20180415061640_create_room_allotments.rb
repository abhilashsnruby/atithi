class CreateRoomAllotments < ActiveRecord::Migration[5.1]
  def change
    create_table :room_allotments do |t|
      t.integer :customer_id
      t.integer :room_id
      t.boolean :status

      t.timestamps
    end
  end
end
