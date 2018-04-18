# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Floor.create(id: 1, floor_name: "first floor", number_of_rooms: 4)
Floor.create(id: 2, floor_name: "second floor", number_of_rooms: 4)
Floor.create(id: 3, floor_name: "third floor", number_of_rooms: 3)
# 5.times do |index|
#   Floor.create!(id: "#{index}",
#                 floor_name: "#{index} Floor",
#                 number_of_rooms: "#{index} Number of rooms",
#                 )
# end

# Room.create!(id: 1, room_no: 1, capacity: 1, type_of_sharing: "3", floor_id: 1, status: "true")
# Room.create!(id: 2, room_no: 2, capacity: 2, type_of_sharing: "4", floor_id: 1, status: "false")
# Room.create!(id: 3, room_no: 3, capacity: 3, type_of_sharing: "2", floor_id: 1, status: "true")
# Room.create!(id: 4, room_no: 4, capacity: 4, type_of_sharing: "2", floor_id: 1, status: "false")
# Room.create!(id: 5, room_no: 5, capacity: 5, type_of_sharing: "2", floor_id: 2, status: "false")
# Room.create!(id: 6, room_no: 6, capacity: 6, type_of_sharing: "1", floor_id: 2, status: "false")
# Room.create!(id: 7, room_no: 7, capacity: 7, type_of_sharing: "2", floor_id: 2, status: "true")
# Room.create!(id: 8, room_no: 8, capacity: 8, type_of_sharing: "3", floor_id: 2, status: "true")
# Room.create!(id: 9, room_no: 9, capacity: 9, type_of_sharing: "3", floor_id: 3, status: "false")
# Room.create!(id: 10, room_no: 10, capacity: 10, type_of_sharing: "1", floor_id: 3, status: "true")
# Room.create!(id: 11, room_no: 11, capacity: 11, type_of_sharing: "1", floor_id: 3, status: "false")
# Room.create!(id: 12, room_no: 12, capacity: 12, type_of_sharing: "1", floor_id: 3, status: "true")
# Room.create!(id: 13, room_no: 13, capacity: 13, type_of_sharing: "2", floor_id: 4, status: "false")
# Room.create!(id: 14, room_no: 14, capacity: 14, type_of_sharing: "3", floor_id: 4, status: "true")
# Room.create!(id: 15, room_no: 15, capacity: 15, type_of_sharing: "1", floor_id: 4, status: "false")

# RoomAllotment.create!(id: 1, customer_id: 1, room_id: 1, status: 'true')
# RoomAllotment.create!(id: 1, customer_id: 1, room_id: 2, status: 'true')
# RoomAllotment.create!(id: 1, customer_id: 1, room_id: 3, status: 'true')
# RoomAllotment.create!(id: 1, customer_id: 1, room_id: 4, status: 'true')

# Customer.create!(id: 1, empname: 'Abhilash', mobile_no: 8867649066, 
#                  date_of_joining:'01-02-2015', date_of_birth:'01-02-1986', 
#                  email: 'Abhilashsnmca@gmail.com', room_id: 1, room_allotment_id: 1)
# Customer.create!(id: 2, empname: 'Ritesh', mobile_no: 9066886764, 
#                  date_of_joining:'01-02-2015',date_of_birth:'01-02-1999', 
#                  email: 'Ritesh@gmail.com', room_id: 2, room_allotment_id: 2)
# Customer.create!(id: 3, empname: 'ekansh', mobile_no: 8867649066, 
#                  date_of_joining:'01-02-2015', date_of_birth:'01-02-1986', 
#                  email: 'ekansh@gmail.com', room_id: 3, room_allotment_id: 3)