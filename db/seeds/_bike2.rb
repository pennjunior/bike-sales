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
