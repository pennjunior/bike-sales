# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "open-uri"

Category.destroy_all
puts "Destroyed all categories"

categories = ["ATVs/Quad", "Cruisers", "Dirt Bikes", "Electric", "UTVs", "Scooters"]

categories.each do |category_name|
  Category.create!(name: category_name)
end

cruiser_category = Category.find_by(name: "Cruisers")
atv_category = Category.find_by(name: "ATVs/Quad")
dirtbike_category = Category.find_by(name: "Dirt Bikes")
electric_category = Category.find_by(name: "Electric")
utv_category = Category.find_by(name: "UTVs")
scooter_category = Category.find_by(name: "Scooters")

# Attaching images to categories
cruiser_category.photo.attach(io: URI.open("https://res.cloudinary.com/drxr1eiwp/image/upload/v1731679086/cruiser_pxd5wd.png"), filename: "cruiser.jpg") if cruiser_category
atv_category.photo.attach(io: URI.open("https://res.cloudinary.com/drxr1eiwp/image/upload/v1731544894/development/xyuiwmgtdbtytuogyhx49xte8a6e.webp"), filename: "atv.jpg") if atv_category
dirtbike_category.photo.attach(io: URI.open("https://res.cloudinary.com/drxr1eiwp/image/upload/v1731679086/dirtbike_tpjajl.webp"), filename: "dirtbike.jpg") if dirtbike_category
electric_category.photo.attach(io: URI.open("https://res.cloudinary.com/drxr1eiwp/image/upload/v1733660929/shopping_1_gxgnkf.webp"), filename: "electric.jpg") if electric_category
utv_category.photo.attach(io: URI.open("https://res.cloudinary.com/drxr1eiwp/image/upload/v1731679087/utv_sko8w8.webp"), filename: "utv.jpg") if utv_category
scooter_category.photo.attach(io: URI.open("https://res.cloudinary.com/drxr1eiwp/image/upload/v1731679087/scooter_islstn.webp"), filename: "scooter.jpg") if scooter_category

puts "Categories created: #{Category.count}"

brands = ["Honda", "Yamaha", "Kawasaki", "BMW", "Suzuki", "Ducati", "Segway", "Can-Am", "CFMOTO",
            "Polaris", "Harley Davidson", "Royal Enfield", "Indian", "KYMCO", "Piaggio", "SYM", "Harley", "KTM", "Steve McQueen", "Arctic Cat" ]
brands.map do |brand_name|
    Brand.find_or_create_by!(name: brand_name)
end
  puts "Brands created: #{Brand.count}"

User.destroy_all
puts "All users destroyed."

#Creating admin user
admin_user = User.create!(
  email: "admin@quan.com",
  password: "29w@jV7!4!tQ",
  password_confirmation: "29w@jV7!4!tQ",
  admin: true
)
puts "Admin user created with email: #{admin_user.email} and password: #{admin_user.password}"

#Create a visitor user
visitor_user = User.create!(
  email: "visitor@quan.com",
  password: "123456",
  password_confirmation: "123456",
  admin: false
)
puts "Visitor user created with email: #{visitor_user.email} and password: #{visitor_user.password}"

Bike.destroy_all
puts "Destroyed Bikes"

cruiser_category_id = Category.find_by(name: "Cruisers")&.id
atv_category_id = Category.find_by(name: "ATVs/Quad" )&.id
dirtbike_category_id = Category.find_by(name: "Dirt Bikes" )&.id
electric_category_id = Category.find_by(name: "Electric" )&.id
roadbike_category_id = Category.find_by(name: "Sport" )&.id
utv_category_id = Category.find_by(name: "UTVs" )&.id
scooter_category_id = Category.find_by(name: "Scooters" )&.id

segway_brand_id = Brand.find_by(name: "Segway")&.id
honda_brand_id = Brand.find_by(name: "Honda")&.id
yamaha_brand_id = Brand.find_by(name: "Yamaha")&.id
kawasaki_brand_id = Brand.find_by(name: "Kawasaki")&.id
bmw_brand_id = Brand.find_by(name: "BMW")&.id
suzuki_brand_id = Brand.find_by(name: "Suzuki")&.id
ducati_brand_id = Brand.find_by(name: "Ducati")&.id
canam_brand_id = Brand.find_by(name: "Can-Am")&.id
cfmoto_brand_id = Brand.find_by(name: "CFMOTO")&.id
royal_enfield_brand_id = Brand.find_by(name: "Royal Enfield")&.id
polaris_brand_id = Brand.find_by(name: "Harley Davidson")&.id

villain = Bike.create!(
  model: "Villain SX10 WP (72)",
  kilometers: 1,
  body: "Recreational",
  colour: "Red",
  engine_capacity: 1100,
  last_modified: Date.new(2024),
  registration_status: "registered",
  description: "A versatile adventure villain ideal for both on and off-road.",
  features: "ABS, LED lights, Digital display",
  price: 8500,
  stock: 3,
  maximum_speed: 80,
  fuel_type: "Petrol",
  category_id: utv_category_id,
  brand_id: segway_brand_id
)

villain_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1730679316/IMG_3097_io34pq.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1730679314/IMG_3094_uwx9p6.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1730679315/IMG_3098_y75fma.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1730679317/IMG_3075_ayofdu.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1730679318/IMG_3076_gm0cjl.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1730679319/IMG_3080_dbco0e.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1730679321/IMG_3090_umhyur.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1730679322/IMG_3085_hoe4i3.jpg"
]

villain_urls.each_with_index do |url, index|
  file = URI.open(url)
  villain.photos.attach(io: file, filename: "villain#{index + 1}.jpg", content_type: "image/jpg")
end

puts "photos were attached = #{villain.photos.attached?}"
# require_relative "seeds/atvs"
# require_relative "seeds/cruisers"
# require_relative "seeds/scooter"
# require_relative "seeds/utvs"
# require_relative "seeds/electric"
# require_relative "seeds/reviews"
# require_relative "seeds/articles"
require_relative "seeds/bike2.rb"
