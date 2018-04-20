class RemoveRoomIdFromCustomer < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :room_id, :integer
  end
end
