class AddRoomAllotmentIdToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :room_allotment_id, :integer
  end
end
