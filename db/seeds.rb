# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# showroom_unique=1
# showroom_limited_edition=2

puts "Cleaning database..."

Item.destroy_all

puts "Creating database..."
puts "Creating Showrooms..."

# Item.create(name: "", description: "", price: "", comments: [], quantity:0, type: "", price_range: "50€ - 150€")
showroom1= Showroom.create(name: "Macrame XXL", description: "Des collections de macrame taille XXL", comment: [], type: 1, price_range: "50€ - 150€")
showroom2= Showroom.create(name: "Home décor", description: "Un univers de deco boho tropical pour sublimer vos espaces", comment: [], type: 2, price_range: "50€ - 100€")
showroom3 = Showroom.create(name: "La Mode", description: "La mode est un langage qui se crée dans des vêtements pour interpréter la réalité.", comment: [], type: 1, price_range: "100€ - 200€")

puts "Showrooms seed completed"
