class Room < ApplicationRecord
  # attr_accessible :room_no, :capacity, :type_of_sharing, :floor_id
  
  has_many :customers
  belongs_to :floor

  # def self.assign_floor_to_room parmas, room
  # end

  def self.find_room_details f_name, attached_bathroom, type_of_sharing
    floor_id = Floor.where(floor_name: f_name) if f_name.present?
    if f_name.present?
      Room.where(floor_id: floor_id)
    elsif type_of_sharing.present?
      Room.where(type_of_sharing: type_of_sharing)
    elsif attached_bathroom.present?
      Room.where(attached_bathroom: attached_bathroom)
    elsif f_name.present? && type_of_sharing.present?
      Room.where(floor_name: f_name, type_of_sharing: type_of_sharing)
    elsif f_name.present? && attached_bathroom.present?
      Room.where(floor_name: f_name, type_of_sharing: type_of_sharing)
    elsif type_of_sharing.present? && attached_bathroom.present?
      Room.where(floor_name: f_name, type_of_sharing: type_of_sharing)
    elsif f_name.present? && type_of_sharing.present? && attached_bathroom.present?
      Room.where(floor_id: floor_id, type_of_sharing: type_of_sharing, attached_bathroom: attached_bathroom)
    else
      Room.order(room_no: :desc)
    end
  end
end