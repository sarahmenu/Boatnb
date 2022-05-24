# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'
require "open-uri"
# puts "Cleaning DB"

Booking.destroy_all
Boat.destroy_all
User.destroy_all

# puts " Creating Users"

user_1 = User.create(first_name: 'Lucas', last_name: 'Vittaz', email: 'lucas@gmail.com', phone: '0685259877', password: "123456")
user_2 = User.create(first_name: 'Naby', last_name: 'Bathily', email: 'naby@gmail.com', phone: '0625327730', password: "123456")
user_3 = User.create(first_name: 'Sarah', last_name: 'Menu', email: 'sarah@gmail.com', phone: '0625857768', password: "123456")
user_4 = User.create(first_name: 'Yohann', last_name: 'Lemasson', email: 'yohann@gmail.com', phone: '0625987768', password: "123456")
user_5 = User.create(first_name: 'Anthony', last_name: 'Gouvrillon', email: 'anthony@gmail.com', phone: '0625987766', password: "123456")
user_6 = User.create(first_name: 'Amina', last_name: 'Lagoun', email: 'amina@gmail.com', phone: '0633221255', password: "123456")
user_7 = User.create(first_name: 'Antoine', last_name: 'Manceau', email: 'antoine@gmail.com', phone: '0640123212', password: "123456")
user_8 = User.create(first_name: 'Clément', last_name: 'Spiers', email: 'clement@gmail.com', phone: '0633221257', password: "123456")
user_9 = User.create(first_name: 'Aurore', last_name: 'Rigault', email: 'aurore@gmail.com', phone: '0640123444', password: "123456")

# puts " Creating Boats"

boat_1 = Boat.create!(category: "Sailing ship", name: "Liberty - Kelt V", capacity: 4, location: "La Rochelle", price: 800, description: "An amazing 4 sails", user_id: user_1.id)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653396834/Boats/sailing_boat-sun_odyssey_419-3-2019-158048-picture-001_xdyfn1.jpg")
boat_1.photo.attach(io: file, filename: 'sailing_boat-sun_odyssey_419-3-2019-158048-picture-001_xdyfn1', content_type: 'image/jpg')

boat_2 = Boat.create!(category: "Sailing ship", name: "Coral - Daikiri", capacity: 6, location: "Arzal", price: 1100, description: "The right choice for your family", user_id: user_2.id)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653396835/Boats/sailing_boat-oceanis_45-4-2014-102836-picture-002_2_ahpdrm.jpg")
boat_2.photo.attach(io: file, filename: 'sailing_boat-oceanis_45-4-2014-102836-picture-002_2_ahpdrm', content_type: 'image/jpg')

boat_3 = Boat.create(category: "Sailing ship", name: "Great One - Oceanis 36", capacity: 8, location: "Pornic", price: 1300, description: " It offers a beautiful living space: the saloon with a large bench seat around the table, the television and its sound bar and of course the interior steering position in case of rain. The kitchen equipped with a gas stove with oven, a microwave, fridge-freezer, crockery and kitchen utensils", user_id: user_2.id)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653396834/Boats/sailing_boat-elan_50_impression-5-2015-105492-picture-002_leqe5r.jpg")
boat_3.photo.attach(io: file, filename: 'sailing_boat-elan_50_impression-5-2015-105492-picture-002_leqe5r', content_type: 'image/jpg')

boat_4 = Boat.create(category: "Sailing ship", name: "Megalodon - Jeanneau 40", capacity: 10, location: "La Turballe", price: 1500, description: "Perfect for a huge family", user_id: user_3.id)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653396834/Boats/sailing_boat-bavaria_51_cruiser-5-2016-158060-picture-001_txoi6y.jpg")
boat_4.photo.attach(io: file, filename: 'sailing_boat-bavaria_51_cruiser-5-2016-158060-picture-001_txoi6y', content_type: 'image/jpg')

boat_5 = Boat.create(category: "Sailing ship", name: "Kraken - Bavaria 42", capacity: 12, location: "Auray", price: 2000, description: "Let's sail in Britanny", user_id: user_3.id)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653396834/Boats/sailing_boat-dufour_44-4-2007-120336-picture-002_n9s658.jpg")
boat_5.photo.attach(io: file, filename: 'sailing_boat-dufour_44-4-2007-120336-picture-002_n9s658', content_type: 'image/jpg')

boat_6 = Boat.create(category: "Sailing ship", name: "The Dark Zone - Dufour 425", capacity: 10, location: "Pornic", price: 1800, description: "Prepare yourself for a magis journey in the Pornic bay", user_id: user_3.id)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653396834/Boats/image2600730_uohuvv.jpg")
boat_6.photo.attach(io: file, filename: 'image2600730_uohuvv', content_type: 'image/jpg')

boat_7 = Boat.create(category: "Sailing ship", name: "The Sinked Wagon - Elan 333", capacity: 6, location: "La Turballe", price: 1000, description: "A great sailor ship for family", user_id: user_3.id)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653396833/Boats/55_ohre6r.jpg")
boat_7.photo.attach(io: file, filename: '55_ohre6r', content_type: 'image/jpg')

boat_8 = Boat.create(category: "Motor boat", name: "Cthulhu - Quicksilver Activ 675", capacity: 6, location: "Guérande", price: 800, description: "Ready for speed", user_id: user_2.id)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653396834/Boats/ima-powerboats-cannes-yachting-festival-bavaria-yachts-26673_bb0jel.jpg")
boat_8.photo.attach(io: file, filename: 'ima-powerboats-cannes-yachting-festival-bavaria-yachts-26673_bb0jel', content_type: 'image/jpg')

boat_9 = Boat.create(category: "Motor boat", name: "Miami Vice - Fairline Targa 33", capacity: 4, location: "Piriac", price: 650, description: "Its properties make it equally well suited for fishing, swimming, recreation and boat ride", user_id: user_2.id)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653396834/Boats/monachus-70-fly-28097030220152525167654967654548x_e4fdrg.jpg")
boat_9.photo.attach(io: file, filename: 'monachus-70-fly-28097030220152525167654967654548x_e4fdrg', content_type: 'image/jpg')

boat_10 = Boat.create(category: "Motor boat", name: "White Shark - Bayliner 175", capacity: 5, location: "Saint Jean de Mont", price: 750, description: "Safe boat with excellent marine behavior, fast and economical navigation", user_id: user_1.id)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653396834/Boats/princess-s62-30433050221768486653575268504569x_nzbcqc.jpg")
boat_10.photo.attach(io: file, filename: 'princess-s62-30433050221768486653575268504569x_nzbcqc', content_type: 'image/jpg')




# boat_11 = Boat.create(category: "Motor boat", name: "Long Weekend - Pacific Craft 690", capacity: 2, location: "Pornichet", price: 950, description: "Small but convenient", user_id: user_1.id)
# boat_12 = Boat.create(category: "Motor boat", name: "Hammerhead - Zodiac 65", capacity: 3, location: "Saint Tropez", price: 550, description: "Perfect for phising", user_id: user_2.id)
# boat_13 = Boat.create(category: "Motor boat", name: "Aquamarine - Aquamar 17", capacity: 6, location: "Biarritz", price: 850, description: "Life jackets, throw-able cushion, swim ladder, anchor and line, boat fenders, dock lines and fire extinguisher", user_id: user_1.id)
# boat_14 = Boat.create(category: "Motor boat", name: "Jacky 85 - Targa 33", capacity: 5, location: "Cannes", price: 800, description: "The Jacky 85 has the power to pull skiers, tubers, and get you where you want to go", user_id: user_2.id)
# boat_15 = Boat.create(category: "Motor boat", name: "Big swell - Century 31", capacity: 4, location: "Dunkerque", price: 650, description: "Discover the beautifull bay of Dunkerque", user_id: user_3.id)

# puts " Creating Bookings"

booking_1 = Booking.create!( boat_id: boat_10.id, user_id: user_4.id, total_price: 3000, start_at: DateTime.parse("24/07/2023"), end_at: DateTime.parse("24/07/2023"))
booking_2 = Booking.create( boat_id: boat_1.id, user_id: user_6.id, total_price: 6000, start_at:DateTime.parse("12/07/2023"), end_at:DateTime.parse("16/07/2023"))
booking_3 = Booking.create( boat_id: boat_3.id, user_id: user_8.id, total_price: 5500, start_at: DateTime.parse("18/08/2023"), end_at:DateTime.parse("24/08/2023"))
booking_4 = Booking.create( boat_id: boat_7.id, user_id: user_9.id, total_price: 2250, start_at:DateTime.parse("07/02/2023"), end_at:DateTime.parse("16/07/2023"))

# puts " FINISH"
