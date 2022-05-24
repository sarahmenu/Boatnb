# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

puts "Cleaning DB"

User.destroy_all
Boat.destroy_all
Booking.destroy_all

puts " Creating Users"

user_1 = User.create(first_name: 'Lucas', last_name: 'Vittaz', email: 'lucasvittaz.pro@gmail.com', phone: '0685259877')
user_2 = User.create(first_name: 'Naby', last_name: 'Bathily', email: 'naby.bathily@gmail.com', phone: '0625327730')
user_3 = User.create(first_name: 'Sarah', last_name: 'Menu', email: 'sarah.menu@gmail.com', phone: '0625857768')
user_4 = User.create(first_name: 'Yohann', last_name: 'Lemasson', email: 'yohann.lemasson@gmail.com', phone: '0625987768')
user_5 = User.create(first_name: 'Anthony', last_name: 'Gouvrillon', email: 'anthony.gouvrillon@gmail.com', phone: '0625987766')
user_6 = User.create(first_name: 'Amina', last_name: 'Lagoun', email: 'amina.lagoun@gmail.com', phone: '0633221255')
user_7 = User.create(first_name: 'Antoine', last_name: 'Manceau', email: 'antoine.manceau@gmail.com', phone: '0640123212')
user_8 = User.create(first_name: 'Clément', last_name: 'Spiers', email: 'clement.spiers@gmail.com', phone: '0633221257')
user_9 = User.create(first_name: 'Aurore', last_name: 'Rigault', email: 'aurore.rigault@gmail.com', phone: '0640123444')

puts " Creating Boats"

boat_1 = Boat.create(category: "Sailing ship", name: "Liberty - Kelt V", capacity: 4, location: "La Rochelle", price: 800, description: "An amazing 4 sails", user: user_1)
boat_2 = Boat.create(category: "Sailing ship", name: "Coral - Daikiri", capacity: 6, location: "Arzal", price: 1100, description: "The right choice for your family", user: user_2)
boat_3 = Boat.create(category: "Sailing ship", name: "Great One - Oceanis 36", capacity: 8, location: "Pornic", price: 1300, description: " It offers a beautiful living space: the saloon with a large bench seat around the table, the television and its sound bar and of course the interior steering position in case of rain. The kitchen equipped with a gas stove with oven, a microwave, fridge-freezer, crockery and kitchen utensils", user: user_2)
boat_4 = Boat.create(category: "Sailing ship", name: "Megalodon - Jeanneau 40", capacity: 10, location: "La Turballe", price: 1500, description: "Perfect for a huge family", user: user_3)
boat_5 = Boat.create(category: "Sailing ship", name: "Kraken - Bavaria 42", capacity: 12, location: "Auray", price: 2000, description: "Let's sail in Britanny", user: user_3)
boat_6 = Boat.create(category: "Sailing ship", name: "The Dark Zone - Dufour 425", capacity: 10, location: "Pornic", price: 1800, description: "Prepare yourself for a magis journey in the Pornic bay", user: user_3)
boat_7 = Boat.create(category: "Sailing ship", name: "The Sinked Wagon - Elan 333", capacity: 6, location: "La Turballe", price: 1000, description: "A great sailor ship for family", user: user_3)
boat_8 = Boat.create(category: "Motor boat", name: "Cthulhu - Quicksilver Activ 675", capacity: 6, location: "Guérande", price: 800, description: "Ready for speed", user: user_2)
boat_9 = Boat.create(category: "Motor boat", name: "Miami Vice - Fairline Targa 33", capacity: 4, location: "Piriac", price: 650, description: "Its properties make it equally well suited for fishing, swimming, recreation and boat ride", user: user_2)
boat_10 = Boat.create(category: "Motor boat", name: "White Shark - Bayliner 175", capacity: 5, location: "Saint Jean de Mont", price: 750, description: "Safe boat with excellent marine behavior, fast and economical navigation", user: user_1)
boat_11 = Boat.create(category: "Motor boat", name: "Long Weekend - Pacific Craft 690", capacity: 2, location: "Pornichet", price: 950, description: "Small but convenient", user: user_1)
boat_12 = Boat.create(category: "Motor boat", name: "Hammerhead - Zodiac 65", capacity: 3, location: "Saint Tropez", price: 550, description: "Perfect for phising", user: user_2)
boat_13 = Boat.create(category: "Motor boat", name: "Aquamarine - Aquamar 17", capacity: 6, location: "Biarritz", price: 850, description: "Life jackets, throw-able cushion, swim ladder, anchor and line, boat fenders, dock lines and fire extinguisher", user: user_1)
boat_14 = Boat.create(category: "Motor boat", name: "Jacky 85 - Targa 33", capacity: 5, location: "Cannes", price: 800, description: "The Jacky 85 has the power to pull skiers, tubers, and get you where you want to go", user: user_2)
boat_15 = Boat.create(category: "Motor boat", name: "Big swell - Century 31", capacity: 4, location: "Dunkerque", price: 650, description: "Discover the beautifull bay of Dunkerque", user: user_3)

puts " Creating Bookings"

booking_1 = Booking.create( boat: boat_15, user: user_4, total_price: 3000, start_at: "2023-07-24", end_at:"2023-07-24")
booking_2 = Booking.create( boat: boat_1, user: user_6, total_price: 6000, start_at:"2023-07-12", end_at:"2023-07-16")
booking_3 = Booking.create( boat: boat_12, user: user_8, total_price: 5500, start_at:"2023-08-18", end_at:"2023-08-24")
booking_4 = Booking.create( boat: boat_7, user: user_9, total_price: 2250, start_at:"2023-07-02", end_at:"2023-07-16")
