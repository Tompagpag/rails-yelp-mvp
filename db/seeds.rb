# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese", phone_number: "+33676452354" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian", phone_number: "+33676098354" }
lao = { name: "lao", address: "16 rue Custine 75018 Paris", category: "japanese", phone_number: "+33600962354" }
la_brigade =  { name: "La Brigade", address: "101 rue Oberkampf 75011 Paris", category: "french", phone_number: "+33676090956" }
frites_alors =  { name: "Frites alors !", address: "12 rue des bouchons 69001 Lyon", category: "belgian", phone_number: "+33776092356" }

[dishoom, pizza_east, lao, la_brigade, frites_alors].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
