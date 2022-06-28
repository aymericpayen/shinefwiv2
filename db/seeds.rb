# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# showroom_unique=1
# showroom_limited_edition=2
# https://res.cloudinary.com/<cloud_name>/<resource_type>/<delivery_type>[/<transformations>]/<version>/<public_id>
# https://res.cloudinary.com/dq6zcwxpy/image/upload/v1655154457/shinefwi/macramexxl/Macrame_XXL_1_zesdfo.jpg
require "open-uri"

puts "Cleaning database..."

Showroom.destroy_all
puts "Creating database..."
puts "Creating Showrooms..."

# Cloudinary generic path
cloudinary_generic= "https://res.cloudinary.com/dq6zcwxpy/image/upload/"

# Item.create(name: "", description: "", price: "", comments: [], quantity:0, :type_showroom: "", starting_from: "50€ - 150€")
showroom1 = Showroom.create!(name: "Macrame XXL", description: "Des collections de macrame taille XXL", comment: [], type_showroom: 1, starting_from: "50€ - 150€")
file = URI.open("#{cloudinary_generic}v1655154457/shinefwi/macramexxl/Macrame_XXL_1_zesdfo.jpg")
p "#{cloudinary_generic}v1655154457/shinefwi/macramexxl/Macrame_XXL_1_zesdfo.jpg"
showroom1.photos.attach(io: file, filename: "Macrame_XXL_1_zesdfo.jpg", content_type: 'image/jpg')

showroom2= Showroom.create!(name: "Home décor", description: "Un univers de deco boho tropical pour sublimer vos espaces", comment: [], type_showroom: 2, starting_from: "50€ - 100€")
file = URI.open("#{cloudinary_generic}v1655154457/shinefwi/macramexxl/Macrame_XXL_4_byjqn8.jpg")
showroom2.photos.attach(io: file, filename:"Macrame_XXL_4_byjqn8.jpg", content_type: 'image/jpg')
# photo_showroom2 = PhotoShowroom.new(url: 'v1655154457/shinefwi/macramexxl/Macrame_XXL_4_byjqn8.jpg')
# photo_showroom2.save
# photo_showroom2.showroom = showroom2
# p photo_showroom2
# photo_showroom2.save
# p photo_showroom2

showroom3 = Showroom.create!(name: "La  Mode", description: "La mode est un langage qui se crée dans des vêtements pour interpréter la réalité.", comment: [], type_showroom: 1, starting_from: "100€ - 200€")
file = URI.open("#{cloudinary_generic}v1655154457/shinefwi/macramexxl/Macrame_XXL_3_o3sgby.jpg")
showroom3.photos.attach(io: file, filename:"Macrame_XXL_3_o3sgby.jpg", content_type: 'image/jpg')
# photo_showroom3 = PhotoShowroom.new(url: 'v1655154457/shinefwi/macramexxl/Macrame_XXL_3_o3sgby.jpg')
# photo_showroom3.save
# photo_showroom3.showroom = showroom3
# p photo_showroom3
# photo_showroom3.save
# p photo_showroom3


showroom4 = Showroom.create(name: "La  Mode", description: "La mode est un langage qui se crée dans des vêtements pour interpréter la réalité.", comment: [], type_showroom: 1, starting_from: "100€ - 200€")
# photo_showroom4 = PhotoShowroom.new(url: 'v1655154457/shinefwi/macramexxl/Macrame_XXL_5_szolqw.jpg')
# photo_showroom4.save
# photo_showroom4.showroom = showroom4
# p photo_showroom4
# photo_showroom4.save
# p photo_showroom4


#showroom2= Showroom.create(name: "Home décor", description: "Un univers de deco boho tropical pour sublimer vos espaces", comment: [], type_showroom: 2, starting_from: "50€ - 100€")
#showroom2.photo.attach(io: URI.open("#{url}image/upload/v1655154617/shinefwi/shine%20home%20la%20maison/Home_-_Acceuil_s5ccml.jpg"), filename: 'nes.png', content_type: 'image/png')
#showroom3 = Showroom.create(name: "La  Mode", description: "La mode est un langage qui se crée dans des vêtements pour interpréter la réalité.", comment: [], type_showroom: 1, starting_from: "100€ - 200€")
#showroom3.photo.attach(io: URI.open("#{url}image/upload//v1655154610/shinefwi/shine%20serie%20limite/Serie_limitee_acceuil_et_photophore_llrfme.jpg"), filename: 'nes.png', content_type: 'image/png')

puts "Showrooms seed completed"
