class Room < ApplicationRecord
  # attr_accessible :room_no, :capacity, :type_of_sharing, :floor_id
  
  has_many :customers
  belongs_to :floor
  belongs_to :room_allotment

  # def self.assign_floor_to_room parmas, room
  # end

  def self.find_room_details floors, rooms, type_of_sharing
    
  end
end