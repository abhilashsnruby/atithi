class RoomAllotment < ApplicationRecord
  has_many :customers
  has_many :rooms

  def self.room_allotment_details customers, rooms
    
  end
end
