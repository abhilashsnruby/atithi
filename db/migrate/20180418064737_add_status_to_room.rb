class AddStatusToRoom < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :status, :boolean
  end
end
