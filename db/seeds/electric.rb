require "open-uri"

electric_category = Category.find_by(name: "Electric")
suzuki_brand_id = Brand.find_by(name: "Suzuki")&.id
require "open-uri"

electric_category = Category.find_by(name: "Electric")

# Trek Allant+ 8S
trek_allant_plus_8s = Bike.create!(
  model: "Trek Allant+ 8S",
  kilometers: 0,
  body: "Commuter",
  colour: "Grey",
  engine_capacity: 500,
  last_modified: Date.new(2024),
  description: "High-performance electric commuter bike with Bosch Performance Speed motor and 625Wh battery.",
  features: "• Bosch Performance Speed motor
  • 625Wh battery for extended range
  • Comfortable upright geometry
  • Hydraulic disc brakes for reliable stopping power
  • Integrated lighting system
  • Puncture-resistant tires",
  price: 1999,
  stock: 10,
  maximum_speed: 45,
  fuel_type: "Electric",
  category_id: electric_category.id,
  brand_id: suzuki_brand_id,
  make: "Trek Bikes"
)
trek_allant_plus_8s_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733756000/IMG_8930_uedafh.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733756000/IMG_8929_xx9zn6.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733756001/IMG_8932_dedlyl.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733756001/IMG_8931_zd4nmv.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733756000/IMG_8933_m9v3lc.jpg"
]
trek_allant_plus_8s_urls.each_with_index do |url, index|
  file = URI.open(url)
  trek_allant_plus_8s.photos.attach(io: file, filename: "trek_allant_plus_8s_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for trek_allant_plus_8s = #{trek_allant_plus_8s.photos.attached?}"

# Vvolt Alpha 2
vvolt_alpha_2 = Bike.create!(
  model: "Vvolt Alpha 2",
  kilometers: 0,
  body: "Commuter",
  colour: "Silver",
  engine_capacity: 375,
  last_modified: Date.new(2024),
  description: "Affordable and maintenance-free electric bike with 375Wh battery and comfortable ride.",
  features: "• 375Wh battery with 45-mile range
  • Maintenance-free belt drive
  • Hydraulic disc brakes
  • Upright riding position
  • Integrated lights",
  price: 1199,
  stock: 20,
  maximum_speed: 32,
  fuel_type: "Electric",
  category_id: electric_category.id,
  brand_id: suzuki_brand_id,
  make: "Vvolt Alpha"
)
vvolt_alpha_2_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733756408/VvoltAlphaII24_1220x_crop_center_ewh8q7.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733756407/VvoltAlphaII22_1220x_crop_center_dnntab.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733756406/VvoltAlphaII18_1220x_crop_center_d1zbdu.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733756407/VvoltAlphaII23_1220x_crop_center_ek5fob.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733756406/VvoltAlphaII17_1220x_crop_center_vuvzod.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733756406/VvoltAlphaII16_1220x_crop_center_jtnas0.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733756405/VvoltAlphaII11_1220x_crop_center_jdm4wb.webp"
]
vvolt_alpha_2_urls.each_with_index do |url, index|
  file = URI.open(url)
  vvolt_alpha_2.photos.attach(io: file, filename: "vvolt_alpha_2_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for vvolt_alpha_2 = #{vvolt_alpha_2.photos.attached?}"

# Schwinn Coston DX
schwinn_coston_dx = Bike.create!(
  model: "Schwinn Coston DX",
  kilometers: 0,
  body: "Commuter",
  colour: "Army Green",
  engine_capacity: 250,
  last_modified: Date.new(2024),
  description: "Versatile and affordable electric bike with 250W motor and 45-mile range.",
  features: "• 250W motor
  • 45-mile range
  • Comfortable seating
  • Integrated lighting system
  • Puncture-resistant tires",
  price: 849,
  stock: 15,
  maximum_speed: 32,
  fuel_type: "Electric",
  category_id: electric_category.id,
  brand_id: suzuki_brand_id,
  make: "Schwinn Coston"
)
schwinn_coston_dx_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733756889/s-l1600_kaygxd.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733756889/s-l1600_3_wejpww.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733756888/s-l1600_2_ynhd0e.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733756890/s-l1600_4_mtdxiy.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733756883/s-l1600_1_ocoiaj.webp"
]
schwinn_coston_dx_urls.each_with_index do |url, index|
  file = URI.open(url)
  schwinn_coston_dx.photos.attach(io: file, filename: "schwinn_coston_dx_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for schwinn_coston_dx = #{schwinn_coston_dx.photos.attached?}"

# Specialized Turbo Vado
specialized_turbo_vado = Bike.create!(
  model: "Specialized Turbo Vado",
  kilometers: 0,
  body: "Commuter",
  colour: "Red",
  engine_capacity: 500,
  last_modified: Date.new(2024),
  description: "Premium electric commuter bike with powerful motor and high-capacity battery.",
  features: "• 500W motor
  • High-capacity battery
  • Comfortable upright geometry
  • Hydraulic disc brakes
  • Integrated lighting system
  • Puncture-resistant tires",
  price: 4999,
  stock: 8,
  maximum_speed: 45,
  fuel_type: "Electric",
  category_id: electric_category.id,
  brand_id: suzuki_brand_id,
  make: "Turbo Vado"
)
specialized_turbo_vado_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733757238/s-l1600_5_juhac1.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733757253/s-l1600_16_sx3d3i.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733757249/s-l1600_14_xkaydz.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733757243/s-l1600_7_lt7pbz.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733757241/s-l1600_9_thn118.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733757242/s-l1600_10_lxsikk.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733757242/s-l1600_11_mahwdo.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733757241/s-l1600_8_inamkn.webp"
]
specialized_turbo_vado_urls.each_with_index do |url, index|
  file = URI.open(url)
  specialized_turbo_vado.photos.attach(io: file, filename: "specialized_turbo_vado_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for specialized_turbo_vado = #{specialized_turbo_vado.photos.attached?}"

# Coswheel T20
coswheel_t20 = Bike.create!(
  model: "Coswheel T20",
  kilometers: 0,
  body: "Commuter",
  colour: "White",
  engine_capacity: 500,
  last_modified: Date.new(2024),
  description: "Compact and versatile folding electric bike with 500W motor and quick folding mechanism.",
  features: "• 500W motor
  • Quick folding mechanism
  • Lightweight frame
  • Hydraulic disc brakes
  • Integrated lighting system
  • Puncture-resistant tires",
  price: 1799,
  stock: 10,
  maximum_speed: 32,
  fuel_type: "Electric",
  category_id: electric_category.id,
  brand_id: suzuki_brand_id,
  make: "Coswheel"
  )
coswheel_t20_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733757621/IMG_8939_njxskt.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733757621/IMG_8938_ev7cdl.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733757620/IMG_8937_g9wmge.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733757620/IMG_8936_tm61da.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733757620/IMG_8935_afolxu.avif"
]
coswheel_t20_urls.each_with_index do |url, index|
  file = URI.open(url)
  coswheel_t20.photos.attach(io: file, filename: "coswheel_t20_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for coswheel_t"

smart_traver = Bike.create!(
  model: "Smart Traver",
  kilometers: 0,
  body: "Folding Fat Tire",
  colour: "Orange",
  engine_capacity: 450,
  last_modified: Date.new(2024),
  description: "Compact folding fat-tire electric bike with a powerful 750W motor, great for city and off-road adventures.",
  features: "• 750W motor for hills and trails
  • Folding frame for portability
  • 20\" x 4\" fat tires for superior grip
  • Dual disc brakes for safety
  • Front and rear suspension
  • Integrated LED headlight and taillight",
  price: 1299,
  stock: 12,
  maximum_speed: 40,
  fuel_type: "Electric",
  category_id: electric_category.id,
  brand_id: suzuki_brand_id,
  make: "Smart Traver"
)
smart_traver_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733759805/IMG_8940_kfrmgg.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733759807/IMG_8941_v2mmud.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733759808/IMG_8942_wrbuhg.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733759813/IMG_8945_kmhxc7.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733759813/IMG_8947_yinnnh.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733759812/IMG_8946_uppdvl.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733759810/IMG_8944_etlcvr.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733759809/IMG_8943_ktxgjv.jpg"
]
smart_traver_urls.each_with_index do |url, index|
  file = URI.open(url)
  smart_traver.photos.attach(io: file, filename: "smart_traver_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for smart_traver = #{smart_traver.photos.attached?}"

# 2. Super73
super73 = Bike.create!(
  model: "Super73 SG-1",
  kilometers: 0,
  body: "Cruiser Fat Tire",
  colour: "Black",
  engine_capacity: 450,
  last_modified: Date.new(2024),
  description: "Long-range fat-tire e-bike with a 750W motor, 60 miles of range, and a rugged design for all terrains.",
  features: "• 750W brushless motor
  • 840Wh battery with 60-mile range
  • 26\" x 4\" fat tires for off-road use
  • Front suspension fork
  • LCD display with riding stats
  • Pannier rack for cargo",
  price: 1599,
  stock: 8,
  maximum_speed: 45,
  fuel_type: "Electric",
  category_id: electric_category.id,
  brand_id: suzuki_brand_id,
  make: "Super 73"
)
super73_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733761960/IMG_8950_zerhiw.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733761949/IMG_8949_doo10c.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733761959/IMG_8953_bv0dke.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733761959/IMG_8952_soupkv.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733761952/IMG_8951_xdtogh.jpg"
]
super73_urls.each_with_index do |url, index|
  file = URI.open(url)
  super73.photos.attach(io: file, filename: "super73_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for super73 = #{super73.photos.attached?}"

# 3. Addmotor Motan M-560
addmotor_motan = Bike.create!(
  model: "Addmotor Motan M-560",
  kilometers: 0,
  body: "Mountain Fat Tire",
  colour: "Black",
  engine_capacity: 750,
  last_modified: Date.new(2024),
  description: "Rugged electric bike with 750W motor, 26\" x 4\" fat tires, and a sturdy frame for trails and beaches.",
  features: "• 750W motor with pedal assist
  • 26\" x 4\" Kenda tires
  • Aluminum alloy frame
  • 48V 17.5Ah battery for long rides
  • Comfortable wide saddle
  • Backlit LCD display",
  price: 1499,
  stock: 10,
  maximum_speed: 32,
  fuel_type: "Electric",
  category_id: electric_category.id,
  brand_id: suzuki_brand_id,
  make: "Addmotor"
)
addmotor_motan_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733762348/addmotor-motan-m-560-1200x800-c-default_wctwag.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733762349/addmotor-motan-m-560-control-pad-thumb-shifter-twist-throttle-1200x800-c-default_janqpv.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733762349/addmotor-motan-m-560-panasonic-48-volt-battery-pack-1200x800-c-default_c5hbhn.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733762350/addmotor-motan-m-560-plastic-chain-guide-wellgo-alloy-pedals-1200x800-c-default_ugkm4t.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733762349/addmotor-motan-m-560-charger-1200x800-c-default_kyfws8.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733762358/addmotor-motan-m-560-punched-out-rims-4-inch-kenda-tires-1200x800-c-default_w2iwpo.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733762358/addmotor-motan-m-560-shimano-tourney-7-speed-1200x800-c-default_kdanrd.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733762358/addmotor-motan-m-560-punched-out-rims-4-inch-kenda-tires-1200x800-c-default_w2iwpo.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733762357/addmotor-motan-m-560-tektro-aries-180mm-mechanical-disc-brakes-1200x800-c-default_e4fzfg.jpg"
]
addmotor_motan_urls.each_with_index do |url, index|
  file = URI.open(url)
  addmotor_motan.photos.attach(io: file, filename: "addmotor_motan_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for addmotor_motan = #{addmotor_motan.photos.attached?}"

# 4. Rad Power RadRunner Plus
rad_runner_plus = Bike.create!(
  model: "Rad Power RadRunner Plus",
  kilometers: 0,
  body: "Utility Fat Tire",
  colour: "Silver",
  engine_capacity: 750,
  last_modified: Date.new(2024),
  description: "Versatile fat-tire utility e-bike with passenger seat, 750W motor, and 80 Nm torque for heavy loads.",
  features: "• 750W geared hub motor
  • Step-through frame for easy access
  • 20\" x 3.3\" fat tires for comfort
  • Integrated rear passenger seat
  • LED display for speed and battery
  • Adjustable handlebars",
  price: 1399,
  stock: 6,
  maximum_speed: 32,
  fuel_type: "Electric",
  category_id: electric_category.id,
  brand_id: suzuki_brand_id,
  make: "Rad Power Bikes"
)
rad_runner_plus_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733763435/s-l1600_1_mvcrcf.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733763437/s-l1600_2_bjblao.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733763437/s-l1600_5_mfzfbu.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733763437/s-l1600_4_i38zwk.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733763438/s-l1600_3_exqa6n.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733763439/s-l1600_7_o7ygzs.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733763438/s-l1600_6_yjikz7.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733763439/s-l1600_ztllwe.webp"
]
rad_runner_plus_urls.each_with_index do |url, index|
  file = URI.open(url)
  rad_runner_plus.photos.attach(io: file, filename: "rad_runner_plus_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for rad_runner_plus = #{rad_runner_plus.photos.attached?}"

# 5. Cyrusher XF800
cyrusher_xf800 = Bike.create!(
  model: "Cyrusher XF800",
  kilometers: 0,
  body: "Mountain Fat Tire",
  colour: "White",
  engine_capacity: 750,
  last_modified: Date.new(2024),
  description: "High-performance fat-tire mountain e-bike with a 750W motor and dual suspension for extreme terrains.",
  features: "• 750W Bafang motor
  • Full suspension for comfort
  • 26\" x 4\" Chaoyang tires
  • 48V 13Ah battery
  • Hydraulic disc brakes
  • Shimano 7-speed gears",
  price: 2099,
  stock: 7,
  maximum_speed: 50,
  fuel_type: "Electric",
  category_id: electric_category.id,
  brand_id: suzuki_brand_id,
  make: "Cyrusher"
)
cyrusher_xf800_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733763808/s-l1600_10_cx5y2w.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733763808/s-l1600_8_zk4uum.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733763808/s-l1600_8_zk4uum.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733763809/s-l1600_12_gwv4t7.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733763809/s-l1600_13_uc8tg4.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733763814/s-l1600_14_jhary5.webp"
]
cyrusher_xf800_urls.each_with_index do |url, index|
  file = URI.open(url)
  cyrusher_xf800.photos.attach(io: file, filename: "cyrusher_xf800_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for cyrusher_xf800 = #{cyrusher_xf800.photos.attached?}"

# 6. Nakto Folding OX
mate_x250 = Bike.create!(
  model: "Mate X250",
  kilometers: 0,
  body: "Recreation",
  colour: "Grey",
  engine_capacity: 500,
  last_modified: Date.new(2024),
  description: "Folding E-Bike Electric Assist Bicycle, compact design, and durable build.",
  features: "• 500W rear hub motor
  • 20\" x 4\" fat tires for traction
  • Foldable aluminum frame
  • Mechanical disc brakes
  • Integrated lights
  • LCD display for speed and power",
  price: 2999,
  stock: 15,
  maximum_speed: 30,
  fuel_type: "Electric",
  category_id: electric_category.id,
  brand_id: suzuki_brand_id,
  make: "Mate bike"
)
mate_x250_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733764285/IMG_8954_gflxyw.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733764284/IMG_8955_e4wcfl.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733764287/IMG_8957_abrr2a.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733764293/IMG_8956_gsgkkd.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733764297/IMG_8958_kdvenj.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733764308/IMG_8960_cahxpc.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733764300/IMG_8959_zb2rfg.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733764308/IMG_8962_sdqrep.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1733764445/IMG_8963_ic0wxn.jpg"
]
mate_x250_urls.each_with_index do |url, index|
  file = URI.open(url)
  mate_x250.photos.attach(io: file, filename: "mate_x250_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for mate_x250 = #{mate_x250.photos.attached?}"
puts 'ebikes created #{Bike.category.find_by(name: "Electric").count}'
puts "Total bikes created #{Bike.count}"
