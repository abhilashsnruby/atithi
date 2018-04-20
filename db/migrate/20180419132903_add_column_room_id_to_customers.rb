class AddColumnRoomIdToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :room_id, :integer
  end
end
