class Room < ApplicationRecord
  attr_accessor :room_no, :capacity, :type_of_sharing, :floor_id
  
  has_many :customers
  belongs_to :floor

  # def self.assign_floor_to_room parmas, room
  # end
end