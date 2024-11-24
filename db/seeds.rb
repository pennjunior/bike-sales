# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# require "open-uri"

# Category.destroy_all
# puts "Destroyed all categories"

# categories = ["ATVs/Quad", "Cruisers", "Dirt Bikes", "Electric", "UTVs", "Scooters"]

# categories.each do |category_name|
#   Category.create!(name: category_name)
# end

# cruiser_category = Category.find_by(name: "Cruisers")
# atv_category = Category.find_by(name: "ATVs/Quad")
# dirtbike_category = Category.find_by(name: "Dirt Bikes")
# electric_category = Category.find_by(name: "Electric")
# utv_category = Category.find_by(name: "UTVs")
# scooter_category = Category.find_by(name: "Scooters")

# # Attaching images to categories
# cruiser_category.photo.attach(io: URI.open("https://res.cloudinary.com/drxr1eiwp/image/upload/v1731679086/cruiser_pxd5wd.png"), filename: "cruiser.jpg") if cruiser_category
# atv_category.photo.attach(io: URI.open("https://res.cloudinary.com/drxr1eiwp/image/upload/v1731544894/development/xyuiwmgtdbtytuogyhx49xte8a6e.webp"), filename: "atv.jpg") if atv_category
# dirtbike_category.photo.attach(io: URI.open("https://res.cloudinary.com/drxr1eiwp/image/upload/v1731679086/dirtbike_tpjajl.webp"), filename: "dirtbike.jpg") if dirtbike_category
# electric_category.photo.attach(io: URI.open("https://res.cloudinary.com/drxr1eiwp/image/upload/v1731679086/electric-scooter_tfvwo5.jpg"), filename: "electric.jpg") if electric_category
# utv_category.photo.attach(io: URI.open("https://res.cloudinary.com/drxr1eiwp/image/upload/v1731679087/utv_sko8w8.webp"), filename: "utv.jpg") if utv_category
# scooter_category.photo.attach(io: URI.open("https://res.cloudinary.com/drxr1eiwp/image/upload/v1731679087/scooter_islstn.webp"), filename: "scooter.jpg") if scooter_category

# puts "Categories created: #{Category.count}"


# brands = ["Honda", "Yamaha", "Kawasaki", "BMW", "Suzuki", "Ducati", "Segway", "Can-Am", "CFMOTO",
#           "Polaris", "Harley Davidson", "Royal Enfield", "Indian", "KYMCO", "Piaggio", "SYM", "Harley"]
# brands.map do |brand_name|
#   Brand.find_or_create_by!(name: brand_name)
# end
# puts "Brands created: #{Brand.count}"

User.destroy_all
puts "All users destroyed."

# Creating admin user
admin_user = User.create!(
  email: "admin@quan.com",
  password: "29w@jV7!4!tQ",
  password_confirmation: "29w@jV7!4!tQ",
  admin: true
)
puts "Admin user created with email: #{admin_user.email} and password: #{admin_user.password}"

# Create a visitor user
visitor_user = User.create!(
  email: "visitor@quan.com",
  password: "123456",
  password_confirmation: "123456",
  admin: false
)
puts "Visitor user created with email: #{visitor_user.email} and password: #{visitor_user.password}"

# Bike.destroy_all
# puts "Destroyed Bikes"
# require_relative "seeds/atvs"
# require_relative "seeds/cruisers"
# require_relative "seeds/scooter"
# require_relative "seeds/utvs"
# require_relative "seeds/reviews"
# require_relative "seeds/articles"
