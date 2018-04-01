class CreateFloors < ActiveRecord::Migration[5.1]
  def change
    create_table :floors do |t|
      t.string :floor_name
      t.integer :number_of_rooms

      t.timestamps
    end
  end
end
