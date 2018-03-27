class Customer < ApplicationRecord
  attr_accessor :empname, :mobile_no, :date_of_joining, :date_of_leaving, :date_of_birth, :marital_status, :father_name, :spouse_name, :gender, :present_res_no, :present_res_name, :present_street, :present_locality, :present_city, :present_state_id, :perm_res_no, :perm_res_name, :perm_street

  has_one :room
end