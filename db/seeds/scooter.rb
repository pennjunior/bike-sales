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
  features: "Spacious under-seat storage, LED headlight, front and rear disc brakes...",
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
  features: "• ABS, LED lights, under-seat storage for full-face helmet...",
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
  features: "• LCD instrument cluster, LED lighting, ABS...",
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
  features: "• ABS, LED lights, enhanced ergonomics, modern digital dashboard...",
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
  features: "• Large wheels, dual-disc ABS, spacious under-seat storage...",
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
  features: "• Dual headlights, integrated fuel tank, comfortable seating...",
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
