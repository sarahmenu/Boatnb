# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'
require "open-uri"
puts "Cleaning DB"

Booking.destroy_all
Boat.destroy_all
User.destroy_all

puts " Creating Users"

user_1 = User.create!(first_name: 'Lucas', last_name: 'Vittaz', email: 'lucas@gmail.com', phone: '0685259877', password: "123456")
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653563293/avatars/lucas_hcxpec.jpg")
user_1.photo.attach(io: file, filename: 'lucas.jpg', content_type: 'image/jpg')

user_2 = User.create!(first_name: 'Naby', last_name: 'Bathily', email: 'naby@gmail.com', phone: '0625327730', password: "123456")
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653563292/avatars/naby_bbdweh.jpg")
user_2.photo.attach(io: file, filename: 'naby.jpg', content_type: 'image/jpg')

user_3 = User.create!(first_name: 'Sarah', last_name: 'Menu', email: 'sarah@gmail.com', phone: '0625857768', password: "123456")
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653563292/avatars/sarah_x9pipl.jpg")
user_3.photo.attach(io: file, filename: 'sarah.jpg', content_type: 'image/jpg')

user_4 = User.create!(first_name: 'Yohann', last_name: 'Lemasson', email: 'yohann@gmail.com', phone: '0625987768', password: "123456")
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653563293/avatars/clement_iy0sng.png")
user_4.photo.attach(io: file, filename: 'clement.jpg', content_type: 'image/jpg')

user_5 = User.create!(first_name: 'Anthony', last_name: 'Gouvrillon', email: 'anthony@gmail.com', phone: '0625987766', password: "123456")
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653563293/avatars/anto_lbbmol.jpg")
user_5.photo.attach(io: file, filename: 'anto.jpg', content_type: 'image/jpg')

user_6 = User.create!(first_name: 'Amina', last_name: 'Lagoun', email: 'amina@gmail.com', phone: '0633221255', password: "123456")
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653563292/avatars/margaux_n8mpcs.jpg")
user_6.photo.attach(io: file, filename: 'margaux.jpg', content_type: 'image/jpg')

user_7 = User.create!(first_name: 'Antoine', last_name: 'Manceau', email: 'antoine@gmail.com', phone: '0640123212', password: "123456")
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653563292/avatars/val_k2pxfv.png")
user_7.photo.attach(io: file, filename: 'val.jpg', content_type: 'image/jpg')

user_8 = User.create!(first_name: 'Clément', last_name: 'Spiers', email: 'clement@gmail.com', phone: '0633221257', password: "123456")
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653563293/avatars/audren_bhst48.jpg")
user_8.photo.attach(io: file, filename: 'audren.jpg', content_type: 'image/jpg')

user_9 = User.create!(first_name: 'Valentin', last_name: 'Chauveau', email: 'valentin@gmail.com', phone: '0640123444', password: "123456")
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653563293/avatars/remy_b0gn39.png")
user_9.photo.attach(io: file, filename: 'remy.jpg', content_type: 'image/jpg')

puts " Creating Boats"

boat_1 = Boat.create!(category: "Sailing ship", name: "Liberty - Kelt V", capacity: 4, location: "La Rochelle", price: 800, description: "An amazing 4 sails", user_id: user_1.id)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653653997/Boats_2/first44-cruising-ext1_bdyfjk.jpg")
boat_1.photo.attach(io: file, filename: 'sailing_boat-sun_odyssey_419-3-2019-158048-picture-001_xdyfn1.jpg', content_type: 'image/jpg')

boat_2 = Boat.create!(category: "Sailing ship", name: "Coral - Daikiri", capacity: 6, location: "Arzal", price: 1100, description: "The right choice for your family", user_id: user_2.id)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653653996/Boats_2/first27-se-sailing-exp4_fm7jzd.jpg")
boat_2.photo.attach(io: file, filename: 'sailing_boat-oceanis_45-4-2014-102836-picture-002_2_ahpdrm.jpg', content_type: 'image/jpg')

boat_3 = Boat.create(category: "Sailing ship", name: "Great One - Oceanis 36", capacity: 8, location: "Dunkerque", price: 1300, description: "It offers a beautiful living space", user_id: user_2.id)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653653997/Boats_2/figaro3_1_nofsix.jpg")
boat_3.photo.attach(io: file, filename: 'sailing_boat-elan_50_impression-5-2015-105492-picture-002_leqe5r.jpg', content_type: 'image/jpg')

boat_4 = Boat.create(category: "Sailing ship", name: "Megalodon - Jeanneau 40", capacity: 10, location: "La Turballe", price: 1500, description: "Perfect for a huge family", user_id: user_3.id)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653653997/Boats_2/exterieur_6_fsxszc.jpg")
boat_4.photo.attach(io: file, filename: 'sailing_boat-bavaria_51_cruiser-5-2016-158060-picture-001_txoi6y.jpg', content_type: 'image/jpg')

boat_5 = Boat.create(category: "Sailing ship", name: "Kraken - Bavaria 42", capacity: 12, location: "Auray", price: 2000, description: "Let's sail in Britanny", user_id: user_7.id)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653653997/Boats_2/oceanis51-ext1_nbdghn.jpg")
boat_5.photo.attach(io: file, filename: 'sailing_boat-dufour_44-4-2007-120336-picture-002_n9s658.jpg', content_type: 'image/jpg')

boat_6 = Boat.create(category: "Sailing ship", name: "The Dark Zone - Dufour 425", capacity: 10, location: "Biarritz", price: 1800, description: "Prepare yourself for a magic journey", user_id: user_6.id)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653653997/Boats_2/ocy60-exterieur1_jjh27i.jpg")
boat_6.photo.attach(io: file, filename: 'image2600730_uohuvv.jpg', content_type: 'image/jpg')

boat_7 = Boat.create(category: "Motor boat", name: "The Sinked Wagon - Elan 333", capacity: 6, location: "Cannes", price: 1000, description: "A great sailor ship for family", user_id: user_5.id)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653653997/Boats_2/exte_grand-trawler62_4_0_t1d6yt.png")
boat_7.photo.attach(io: file, filename: '55_ohre6r.jpg', content_type: 'image/jpg')

boat_8 = Boat.create(category: "Motor boat", name: "Cthulhu - Quicksilver Activ 675", capacity: 6, location: "Arcachon", price: 800, description: "Ready for speed", user_id: user_4.id)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653653997/Boats_2/flyer_10_exterieur_1_gd1i5r.jpg")
boat_8.photo.attach(io: file, filename: 'ima-powerboats-cannes-yachting-festival-bavaria-yachts-26673_bb0jel.jpg', content_type: 'image/jpg')

boat_9 = Boat.create(category: "Motor boat", name: "Miami Vice - Fairline Targa 33", capacity: 4, location: "Argelès", price: 650, description: "Its properties make it well suited for fishing", user_id: user_2.id)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653653996/Boats_2/montecaro-52_navigation_c4qa7p.jpg")
boat_9.photo.attach(io: file, filename: 'monachus-70-fly-28097030220152525167654967654548x_e4fdrg.jpg', content_type: 'image/jpg')

boat_10 = Boat.create(category: "Motor boat", name: "White Shark - Bayliner 175", capacity: 5, location: "Pornic", price: 750, description: "Safe boat with excellent marine behavior", user_id: user_1.id)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653653996/Boats_2/ext2_gt45_v2_zgrrfi.jpg")
boat_10.photo.attach(io: file, filename: 'princess-s62-30433050221768486653575268504569x_nzbcqc.jpg', content_type: 'image/jpg')

boat_11 = Boat.create(category: "Motor boat", name: " Holidays 3 - Gator 35", capacity: 5, location: "Dunkerque", price: 650, description: "Really nice for speed sensation", user_id: user_6.id)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653655062/Boats_2/JEANNEAU_CAP_CAMARAT_715_WA.10_7419_xojj5h.jpg")
boat_11.photo.attach(io: file, filename: 'princess-s62-30433050221768486653575268504569x_nzbcqc.jpg', content_type: 'image/jpg')

boat_12 = Boat.create(category: "Sailing boat", name: " Moby Dick 2 - GV55", capacity: 5, location: "Sète", price: 850, description: "Really nice for speed sensation", user_id: user_4.id)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653655063/Boats_2/voilier-jeanneau_haey7g.jpg")
boat_12.photo.attach(io: file, filename: 'princess-s62-30433050221768486653575268504569x_nzbcqc.jpg', content_type: 'image/jpg')

boat_13 = Boat.create(category: "Sailing boat", name: " Desire - Loft 47", capacity: 5, location: "Martigues", price: 850, description: "Really nice for speed sensation", user_id: user_5.id)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653655350/Boats_2/ob_fa0d8c_monocat-jeanneau-sun-loft-47-sailing-2_fmlhga.jpg")
boat_13.photo.attach(io: file, filename: 'princess-s62-30433050221768486653575268504569x_nzbcqc.jpg', content_type: 'image/jpg')

boat_14 = Boat.create(category: "Sailing boat", name: " Utopia - Bavaria 52", capacity: 5, location: "Martigues", price: 850, description: "Really nice for speed sensation", user_id: user_4.id)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653655660/Boats_2/boot-dusseldorf-bavaria-yachts-1_kvhmai.jpg")
boat_14.photo.attach(io: file, filename: 'princess-s62-30433050221768486653575268504569x_nzbcqc.jpg', content_type: 'image/jpg')

boat_15 = Boat.create(category: "Sailing boat", name: " Atlantid - Bavaria Zebra 60", capacity: 5, location: "Martigues", price: 850, description: "Really nice for speed sensation", user_id: user_8.id)
file = URI.open("https://res.cloudinary.com/dpspcjurv/image/upload/v1653655660/Boats_2/bateau-bavaria-c45-4528284-yb_zslzuu.jpg")
boat_15.photo.attach(io: file, filename: 'princess-s62-30433050221768486653575268504569x_nzbcqc.jpg', content_type: 'image/jpg')


puts " Creating Bookings"

booking_1 = Booking.create!( boat_id: boat_10.id, user_id: user_4.id, total_price: 3000, start_at: DateTime.parse("24/07/2023"), end_at: DateTime.parse("24/07/2023"), status: "Pending")
booking_2 = Booking.create( boat_id: boat_1.id, user_id: user_6.id, total_price: 6000, start_at:DateTime.parse("12/07/2023"), end_at:DateTime.parse("16/07/2023"), status: "Pending")
booking_3 = Booking.create( boat_id: boat_3.id, user_id: user_8.id, total_price: 5500, start_at: DateTime.parse("18/08/2023"), end_at:DateTime.parse("24/08/2023"), status: "Accepted")
booking_4 = Booking.create( boat_id: boat_7.id, user_id: user_9.id, total_price: 2250, start_at:DateTime.parse("07/02/2023"), end_at:DateTime.parse("16/07/2023"), status: "Rejected")

puts " FINISH"
