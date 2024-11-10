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

Bike.destroy_all
puts "Destroyed all  motocycles"

# Seed Categories
categories = ["ATVs/Quad", "Cruisers", "Dirt Bikes", "Electric", "Road Bikes", "UTVs", "Scooters"]
categories.map do |category_name|
  Category.find_or_create_by!(name: category_name)
end
puts "Categories created: #{Category.count}"

brands = ["Honda", "Yamaha", "Kawasaki", "BMW", "Suzuki", "Ducati", "Segway", "Can-Am", "CFMOTO",
          "Polaris", "Harley Davidson", "Royal Enfield", "Indian", "KYMCO", "Piaggio", "SYM", "Harley"]
brands.map do |brand_name|
  Brand.find_or_create_by!(name: brand_name)
end
puts "Brands created: #{Brand.count}"

require_relative "seeds/atvs"
require_relative "seeds/cruisers"
require_relative "seeds/scooter"
require_relative "seeds/utvs"
