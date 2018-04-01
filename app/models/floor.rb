class Floor < ApplicationRecord
  attr_accessor :floor_name, :number_of_rooms

  has_many :rooms
end
