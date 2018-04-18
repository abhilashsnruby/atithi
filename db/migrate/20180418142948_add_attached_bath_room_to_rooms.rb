class AddAttachedBathRoomToRooms < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :attached_bathroom, :boolean
  end
end
