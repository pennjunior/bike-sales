scooter_category_id = Category.find_by(name: "Scooters" )&.id

honda_brand_id = Brand.find_by(name: "Honda")&.id
yamaha_brand_id = Brand.find_by(name: "Yamaha")&.id
suzuki_brand_id = Brand.find_by(name: "Suzuki")&.id
sym_brand_id = Brand.find_by(name: "SYM")&.id
piaggio_brand_id = Brand.find_by(name: "Piaggio")&.id
kymco_brand_id = Brand.find_by(name: "KYMCO")&.id
indian_brand_id = Brand.find_by(name: "Indian")&.id

# Scooter 1
agility_rs_125 = Bike.create!(
  model: "2024 Kymco Agility RS 125 MY23",
  kilometers: 0,
  body: "Scooter",
  colour: "Matte Black",
  engine_capacity: 125,
  registration_status: "registered",
  last_modified: Date.new(2024),
  description: "Air-cooled, 4-stroke, single-cylinder 125cc engine, efficient fuel economy",
  features: "• 124.8cc, single-cylinder, air-cooled engine delivering efficient and reliable power for city commuting and everyday use
  • Smooth and responsive performance with a 5-speed manual transmission, ideal for both beginner and experienced riders seeking control and agility
  • Sporty and modern styling with sharp lines, aggressive graphics, and a sleek, compact body designed for both performance and aesthetics
  • Lightweight frame and low seat height for easy maneuverability and confidence on city streets, offering a nimble and comfortable ride
  • Telescopic front forks and twin rear shock absorbers for enhanced stability and a smooth ride over uneven roads
  • 17-inch front and 14-inch rear alloy wheels paired with high-performance tires for superior grip and handling in various urban conditions
  • High-efficiency LED lighting for improved visibility, including a stylish LED headlamp and taillights
  • Digital display showing essential information like speed, trip meter, fuel level, and time, for easy monitoring of your ride
  • Front disc brake and rear drum brake system offering reliable stopping power with smooth, controlled braking performance
  • Generous 9-liter fuel tank for an extended riding range, reducing the need for frequent stops during daily commutes
  • Eco-friendly and fuel-efficient design, ensuring low emissions and minimal maintenance for a long-lasting, hassle-free ownership experience.",
  price: 1499,
  stock: 10,
  maximum_speed: 95,
  fuel_type: "Petrol",
  brand_id: kymco_brand_id,
  category_id: scooter_category_id
)
agility_rs_125_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731153534/IMG_8577_ogx1qz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731153533/IMG_8576_uu1mb4.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731153524/IMG_8561_otqzkg.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731153526/IMG_8570_scpkjg.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731153527/IMG_8571_mcsy8l.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731153527/IMG_8567_wtxyvd.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731153527/IMG_8568_dmobm7.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731153527/IMG_8563_aqrwpy.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731153533/IMG_8574_eqhost.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731153533/IMG_8576_uu1mb4.jpg"
]
agility_rs_125_urls.each_with_index do |url, index|
  file = URI.open(url)
  agility_rs_125.photos.attach(io: file, filename: "agility_rs_125_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for agility_rs_125 = #{agility_rs_125.photos.attached?}"

# Scooter 2
honda_pcx_160 = Bike.create!(
  model: "Honda PCX 160",
  kilometers: 0,
  body: "Scooter",
  colour: "Pearl White",
  engine_capacity: 156,
  registration_status: "registered",
  last_modified: Date.new(2018),
  description: "156cc liquid-cooled, 4-stroke engine with smart key and start-stop technology",
  features: "• 157cc, single-cylinder, liquid-cooled engine delivering smooth and efficient power for both city commuting and longer rides
  • Sleek, modern scooter design with sharp lines, sporty aesthetics, and a premium look that stands out on the road
  • Fuel-efficient engine with Honda's eSP+ technology, offering impressive mileage for daily commutes and reduced emissions for eco-friendly riding
  • V-Matic automatic transmission for smooth and effortless acceleration, making it perfect for both new and experienced riders
  • Comfortable, large seat design with ample foot space for a relaxed riding experience, even on longer journeys
  • Spacious under-seat storage with enough room for a full-face helmet and other essentials, ideal for daily commuting or running errands
  • Full LED lighting package including a bold LED headlamp, taillights, and turn signals for improved visibility and modern styling
  • 14-inch front and 13-inch rear wheels, providing excellent stability and handling on a variety of surfaces
  • Advanced digital dashboard with easy-to-read displays for speed, fuel level, trip meter, and other important ride information
  • Honda's Combined Braking System (CBS) for enhanced braking performance, offering smooth and confident stops
  • Low-maintenance and durable design with high-quality materials, ensuring reliability and longevity for daily use.",
  price: 1799,
  stock: 8,
  maximum_speed: 100,
  fuel_type: "Petrol",
  brand_id: honda_brand_id,
  category_id: scooter_category_id
)
honda_pcx_160_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731154364/6726fb4b2e70fe41084309e7_ro7vka.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731154363/6726fb4b2e70fe41084309e6_wvfbj3.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731154363/6726fb4b2e70fe41084309e6_wvfbj3.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731154364/6726fb4c2e70fe41084309e9_oplrv8.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731154364/6726fb4d2e70fe41084309ea_vxgeja.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731154368/6726fb4d2e70fe41084309eb_hyewes.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731154371/6726fb4e2e70fe41084309ee_ohdbz0.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731154369/6726fb4e2e70fe41084309ed_j9zuqo.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731154369/6726fb4d2e70fe41084309ec_tyqbdj.webp"
]
honda_pcx_160_urls.each_with_index do |url, index|
  file = URI.open(url)
  honda_pcx_160.photos.attach(io: file, filename: "honda_pcx_160_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for honda_pcx_160 = #{honda_pcx_160.photos.attached?}"

# Scooter 3
yamaha_nmax_155 = Bike.create!(
  model: "2024 Yamaha NMAX 155",
  kilometers: 0,
  body: "Scooter",
  colour: "Midnight Black",
  engine_capacity: 155,
  registration_status: "registered",
  last_modified: Date.new(2024),
  description: "155cc, liquid-cooled, 4-stroke engine with variable valve actuation",
  features: "• 155cc, single-cylinder, liquid-cooled engine equipped with Yamaha's Variable Valve Actuation (VVA) system for smooth performance and excellent fuel efficiency
  • Modern and sporty design with sharp lines, bold graphics, and a compact body that’s perfect for city riding and tight spaces
  • Automatic V-Belt transmission for seamless acceleration, making it easy to ride and perfect for both beginner and experienced riders
  • Lightweight and agile chassis for enhanced handling and stability, ensuring a smooth ride through traffic and on winding roads
  • Comfortable and wide seat with ample legroom, providing excellent rider comfort during both short and long commutes
  • Spacious under-seat storage with enough space to hold a full-face helmet and other essentials for daily use
  • Full LED lighting, including a stylish LED headlamp and taillights, improving visibility while giving the scooter a modern, sleek look
  • 13-inch front and rear wheels designed to provide a balance of stability and comfort, with high-performance tires for solid grip
  • Advanced digital dashboard displaying essential information such as speed, fuel level, trip meter, and other key metrics
  • Unified Braking System (UBS) for improved braking control and safety, providing smooth and responsive stopping power
  • Yamaha's renowned reliability, low maintenance, and durable build, making the NMAX 155 a great long-term investment for urban commuters.",
  price: 599,
  stock: 6,
  maximum_speed: 105,
  fuel_type: "Petrol",
  brand_id: yamaha_brand_id,
  category_id: scooter_category_id
)
yamaha_nmax_155_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731155239/999767660_4_z6mqig.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731155240/999767660_1_bc1wtl.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731155241/999767660_6_v74wtg.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731155241/999767660_5_vcnejd.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731155241/999767660_2_tknf2d.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731155241/999767660_3_vfjcx2.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731155241/999767660_7_gwmodr.jpg"
]
yamaha_nmax_155_urls.each_with_index do |url, index|
  file = URI.open(url)
  yamaha_nmax_155.photos.attach(io: file, filename: "yamaha_nmax_155_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for yamaha_nmax_155 = #{yamaha_nmax_155.photos.attached?}"

# Scooter 4
suzuki_110 = Bike.create!(
  model: "2022 Suzuki Address 110 (UK110NE)",
  kilometers: 0,
  body: "Scooter",
  colour: "Brilliant White",
  engine_capacity: 278,
  registration_status: "registered",
  last_modified: Date.new(2022),
  description: "278cc liquid-cooled, 4-stroke engine with classic Italian styling",
  features: "• 113cc, single-cylinder, air-cooled engine designed for efficient fuel consumption and reliable performance in urban commuting
  • Lightweight and compact design, making it highly maneuverable and perfect for navigating busy city streets and tight spaces
  • V-belt automatic transmission for smooth, effortless acceleration, ideal for new riders and those looking for a stress-free riding experience
  • Spacious under-seat storage with enough capacity for a helmet and other essentials, offering convenience for daily errands and commuting
  • Front telescopic forks and rear twin shock absorbers for a comfortable and stable ride, even on uneven urban roads
  • 10-inch front and 10-inch rear wheels, providing excellent stability and agility while maintaining a compact profile for easy handling
  • Full LED headlamp and taillight for improved visibility and a modern, stylish appearance, ensuring safe riding at night or in low light conditions
  • Large, ergonomic seat design for increased comfort during both short and long rides, ideal for urban commuters
  • Fuel-efficient design, offering an impressive fuel economy for long-range commutes with fewer stops for refueling
  • Suzuki's reputation for reliability, low maintenance, and durable build quality, ensuring a long-lasting and dependable ride for daily use.",
  price: 2299,
  stock: 4,
  maximum_speed: 120,
  fuel_type: "Petrol",
  brand_id: honda_brand_id,
  category_id: scooter_category_id,
)
suzuki_110_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731155621/463313266_122104627376566265_2295488743821595373_n_z9ws1e.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731155622/463338591_122104627550566265_3314160515106552687_n_xfjmex.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731155621/463297694_122104627574566265_6216999102402985799_n_ragbvw.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731155627/463563817_122104627448566265_7030001575483042375_n_p6oeqy.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731155628/463426542_122104627514566265_9159905162435118424_n_iq7gj3.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731155625/463381840_122104627580566265_3880743887733279422_n_evdlef.jpg"
]
suzuki_110_urls.each_with_index do |url, index|
  file = URI.open(url)
  suzuki_110.photos.attach(io: file, filename: "suzuki_110_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for suzuki_110 = #{suzuki_110.photos.attached?}"

# Scooter 5
piaggio_bv_350 = Bike.create!(
  model: "2024 Piaggio BV 350",
  kilometers: 0,
  body: "Scooter",
  colour: "Black",
  engine_capacity: 330,
  registration_status: "registered",
  last_modified: Date.new(2024),
  description: "330cc single-cylinder, liquid-cooled engine with smooth power delivery",
  features: "• 350cc, single-cylinder, liquid-cooled engine delivering strong performance with excellent acceleration and top speed, ideal for both city commuting and longer rides
  • Smooth, responsive CVT (Continuously Variable Transmission) for effortless acceleration and easy handling in various traffic conditions
  • Modern and sporty design with clean lines, a large front shield, and stylish curves, providing both comfort and an eye-catching aesthetic
  • Comfortable seat with ample space for the rider and passenger, ensuring a relaxed and comfortable ride, even on longer journeys
  • Full LED lighting system, including a sleek LED headlamp and tail light for improved visibility and a contemporary look
  • Large, spacious under-seat storage capable of holding a full-face helmet and more, perfect for daily commuting and running errands
  • 16-inch front and 14-inch rear wheels with high-performance tires, providing excellent stability, grip, and smooth handling across a variety of surfaces
  • Advanced digital dashboard offering essential information such as speed, fuel level, and trip data in a sleek and easy-to-read format
  • Anti-lock Braking System (ABS) and front and rear disc brakes for enhanced stopping power and safety
  • Large fuel tank for extended range and fewer stops, making it ideal for longer trips and highway cruising
  • Piaggio's reputation for quality and reliability, delivering a low-maintenance, high-performance scooter for daily use.",
  price: 2200,
  stock: 5,
  maximum_speed: 130,
  fuel_type: "Petrol",
  brand_id: piaggio_brand_id,
  category_id: scooter_category_id,
)
piaggio_bv_350_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731156447/6728c54aaaa79776526f1419_gklnsd.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731156447/6728c54c93be3f3d231707df_vczv9u.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731156448/6728c54efa0d12186832e506_wvgrvg.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731156450/6728c55aa9de171024741656_elyjek.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731156453/6728c552d4064753f3584b43_czdpib.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731156458/6728c5561c3cba120242277c_myssia.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731156457/6728c5507ab81350872a94ce_kvq72g.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731156457/6728c5507ab81350872a94ce_kvq72g.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731156454/6728c554e2d9ab0785648a27_i3dj9w.webp"
]
piaggio_bv_350_urls.each_with_index do |url, index|
  file = URI.open(url)
  piaggio_bv_350.photos.attach(io: file, filename: "piaggio_bv_350_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for piaggio_bv_350 = #{piaggio_bv_350.photos.attached?}"

# Scooter 6
sym_jet14_200 = Bike.create!(
  model: "2024 SYM Jet14 200",
  kilometers: 0,
  body: "Scooter",
  colour: "Matte Blue",
  engine_capacity: 168,
  registration_status: "registered",
  last_modified: Date.new(2024),
  description: "168cc air-cooled engine with sporty design, stable ride",
  features: "• 169cc, single-cylinder, liquid-cooled engine offering impressive power and smooth performance, ideal for both city commuting and weekend rides
  • CVT (Continuously Variable Transmission) for smooth acceleration and effortless gear transitions, making it perfect for both new and experienced riders
  • Sporty and aggressive styling with sharp lines, sleek bodywork, and modern graphics, giving the Jet14 200 a dynamic and eye-catching appearance
  • Comfortable, wide seat with ample space for both rider and passenger, ensuring a relaxed ride during short or longer journeys
  • Full LED lighting system, including a bright LED headlamp, stylish tail lights, and integrated turn signals for enhanced visibility and modern aesthetics
  • 14-inch alloy wheels with high-performance tires for superior grip, stability, and handling on various road surfaces
  • Spacious under-seat storage capable of holding a full-face helmet and other essentials, providing convenience for daily commuting or running errands
  • Advanced digital instrument cluster displaying key information such as speed, fuel level, trip meter, and time, for easy monitoring on the go
  • Front and rear disc brakes with a combined braking system (CBS) for responsive, reliable stopping power and added safety
  • Economical fuel efficiency for longer riding range with fewer stops, perfect for both city commutes and weekend excursions
  • SYM’s reputation for reliability, low maintenance, and durable build, ensuring a long-lasting, hassle-free ownership experience.",
  price: 2_899,
  stock: 7,
  maximum_speed: 95,
  fuel_type: "Petrol",
  brand_id: sym_brand_id,
  category_id: scooter_category_id,
)
sym_jet14_200_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731156800/66b07fd874b0483d88596c4c_jfcliz.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731156797/66b07fd2a7a3676acc508709_qu1dyh.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731156796/66b07fce9320664628120e3a_xlxtk7.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731156801/66b07fdd4e9a47164d7909c6_k91tyr.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731156804/66b07fe32ac504268a32428f_vmnbnl.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731156805/66b07fe915c34613332b8c7b_ifq6l2.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731156808/66b07fef296e05564264905c_abhbsz.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731156810/66b07ff88cfcc6322e52b6f9_ba0i0g.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731156811/66b07ff40150852e061abf43_oey5cy.webp"
]
sym_jet14_200_urls.each_with_index do |url, index|
  file = URI.open(url)
  sym_jet14_200.photos.attach(io: file, filename: "sym_jet14_200_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for sym_jet14_200 = #{sym_jet14_200.photos.attached?}"
