class RemoveRoomAllotmentIdFromCustomer < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :room_allotment_id, :integer
  end
end
