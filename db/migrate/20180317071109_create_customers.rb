class CreateCustomers < ActiveRecord::Migration[5.1]
  def change
    create_table :customers do |t|
      t.string :empname
      t.string :mobile_no
      t.date :date_of_joining
      t.date :date_of_leaving
      t.date :date_of_birth
      t.string :marital_status
      t.string :father_name
      t.string :spouse_name
      t.string :gender
      t.integer :present_res_no
      t.string :present_res_name
      t.string :present_street
      t.string :present_locality
      t.string :present_city
      t.integer :present_state_id
      t.integer :perm_res_no
      t.string :perm_res_name
      t.string :perm_street

      t.timestamps
    end
  end
end
