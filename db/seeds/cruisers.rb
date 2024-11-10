cruiser_category_id = Category.find_by(name: "Cruisers")&.id

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
indian_brand_id = Brand.find_by(name: "Indian")&.id
harley_brand_id = Brand.find_by(name: "Harley")&.id

# Cruiser 1
heritage_classic_114 = Bike.create!(
  model: "Harley-Davidson Heritage Classic(FLHCS)",
  kilometers: 232,
  body: "Cruiser",
  colour: "Prospect Gold",
  engine_capacity: 1868,
  registration_status: "registered",
  last_modified: Date.new(2023),
  description: "Milwaukee-Eight 114 V-Twin engine, ABS brakes, classic chrome styling",
  features: "Removable windscreen, cruise control, saddlebags...",
  price: 11799,
  stock: 3,
  maximum_speed: 180,
  fuel_type: "Petrol",
  brand_id: harley_brand_id,
  category_id: cruiser_category_id,
)
heritage_classic_114_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731147914/6710a88f67fa9c709f7aab88_ahjmuc.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731147914/6710a88f67fa9c709f7aab89_se0dnr.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731147916/6710a89067fa9c709f7aab8c_yae4i1.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731147915/6710a89067fa9c709f7aab8a_hhrfdc.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731147915/6710a89067fa9c709f7aab8b_w05jtq.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731147924/6710a89167fa9c709f7aab8d_wiqxem.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731147925/6710a89167fa9c709f7aab8e_vhqcth.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731147927/6710a89267fa9c709f7aab8f_suza55.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731147931/6710a89467fa9c709f7aab94_wbszjk.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731147930/6710a89367fa9c709f7aab91_fppxuq.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731147928/6710a89267fa9c709f7aab90_zcfv4c.webp"
]
heritage_classic_114_urls.each_with_index do |url, index|
  file = URI.open(url)
  heritage_classic_114.photos.attach(io: file, filename: "heritage_classic_114_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for heritage_classic_114 = #{heritage_classic_114.photos.attached?}"

# Cruiser 2
indian_chief_dark_horse = Bike.create!(
  model: "Indian Chief Dark Horse",
  kilometers: 0,
  body: "Cruiser",
  colour: "Black Smoke",
  engine_capacity: 1890,
  registration_status: "registered",
  last_modified: Date.new(2023),
  description: "Thunderstroke 116 V-Twin engine, keyless ignition, digital display",
  features: "• LED lighting, 4-inch touchscreen, Bluetooth compatibility...",
  price: 18_499,
  stock: 2,
  maximum_speed: 175,
  fuel_type: "Petrol",
  brand_id: indian_brand_id,
  category_id: cruiser_category_id,
)
indian_chief_dark_horse_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731148745/6712b940c8535a10f451c9f0_mzxxkz.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731148743/6712b93a0f4cb62f8c640c82_abmfd9.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731148745/6712b93a0589f962204fcc7c_fzbbnm.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731148745/6712b93ac7ce144fa05e0186_qskn7q.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731148896/6712b9408b0410201632e449_w2zbwi.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731148791/6712b9398c324043bd159cbf_u7jrni.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731148750/6712b93eec53022ab10dc7cc_zjtj77.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731148749/6712b93e42b6a861737e69e8_mwvueu.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731148747/6712b93cf97fd62d292061cb_n85bdu.jpg"
]
indian_chief_dark_horse_urls.each_with_index do |url, index|
  file = URI.open(url)
  indian_chief_dark_horse.photos.attach(io: file, filename: "indian_chief_dark_horse_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for indian_chief_dark_horse = #{indian_chief_dark_horse.photos.attached?}"

# Cruiser 3
rebel_1100 = Bike.create!(
  model: "Honda Rebel 1100",
  kilometers: 2,
  body: "Cruiser",
  colour: "Green",
  engine_capacity: 1084,
  registration_status: "registered",
  last_modified: Date.new(2023),
  description: "1084cc parallel-twin engine, Honda Selectable Torque Control",
  features: "• Dual-clutch transmission, cruise control, LED lighting...",
  price: 6399,
  stock: 5,
  maximum_speed: 160,
  fuel_type: "Petrol",
  brand_id: honda_brand_id,
  category_id: cruiser_category_id,
)
rebel_1100_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731149995/67272238c3bb773c6271f947_wpzbdr.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731149994/67272239c3bb773c6271f948_vl4q2a.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731149994/6727223bc3bb773c6271f94e_aasl0w.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731149995/67272239c3bb773c6271f949_rgdxyk.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731149994/6727223ac3bb773c6271f94c_phllfv.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731149994/67272238c3bb773c6271f946_klubfh.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731149994/6727223bc3bb773c6271f94d_clmwet.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731149994/6727223ac3bb773c6271f94a_ok8sjz.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731149994/6727223ac3bb773c6271f94b_varcmp.webp"
]
rebel_1100_urls.each_with_index do |url, index|
  file = URI.open(url)
  rebel_1100.photos.attach(io: file, filename: "rebel_1100_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for rebel_1100 = #{rebel_1100.photos.attached?}"

# Cruiser 4
vulcan_900_classic = Bike.create!(
  model: "Kawasaki Vulcan 900 Customs",
  kilometers: 0,
  body: "Cruiser",
  colour: "Metallic Dark Green",
  engine_capacity: 903,
  registration_status: "registered",
  last_modified: Date.new(2023),
  description: "903cc V-twin, fuel-injected engine with classic cruiser styling",
  features: "• Wide handlebars, studded seats, footboards...",
  price: 6199,
  stock: 6,
  maximum_speed: 155,
  fuel_type: "Petrol",
  brand_id: kawasaki_brand_id,
  category_id: cruiser_category_id,
)
vulcan_900_classic_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731150560/269CA93D-3E31-460E-AEE9-5949EDDE6F58_famsxy.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731150560/6BDDD72B-CF85-4BEA-B1CE-71FFB15CA20C_uah4cj.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731150560/73BD2474-1168-439B-A665-6DDF03C4FE5B_rieudx.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731150560/1E0FCF66-7E71-413F-9137-D2D155ED5D74_rvwlzm.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731150560/5AAA23D8-BBE4-439B-8970-BC14B97B6CCA_s8fpb5.jpg"
]
vulcan_900_classic_urls.each_with_index do |url, index|
  file = URI.open(url)
  vulcan_900_classic.photos.attach(io: file, filename: "vulcan_900_classic_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for vulcan_900_classic = #{vulcan_900_classic.photos.attached?}"

# Cruiser 5
boulevard_c50 = Bike.create!(
  model: "2023 Suzuki Boulevard C50",
  kilometers: 0,
  body: "Cruiser",
  colour: "Iron Gray",
  engine_capacity: 805,
  registration_status: "registered",
  last_modified: Date.new(2023),
  description: "805cc fuel-injected V-twin, liquid-cooled engine with classic styling",
  features: "• Full fenders, wide handlebars, comfortable seating...",
  price: 3649,
  stock: 4,
  maximum_speed: 150,
  fuel_type: "Petrol",
  brand_id: suzuki_brand_id,
  category_id: cruiser_category_id,
)
boulevard_c50_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731151038/6711fb8f4c8b7c2b391a8564_wecedo.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731151038/6711fb904c8b7c2b391a8565_wgmy4c.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731151038/6711fb904c8b7c2b391a8567_prkmqc.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731151039/6711fb904c8b7c2b391a8566_yhjjbl.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731151039/6711fb914c8b7c2b391a8569_unn4uk.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731151039/6711fb914c8b7c2b391a8569_1_uxleg1.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731151039/6711fb924c8b7c2b391a856b_m4aboq.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731151038/6711fb914c8b7c2b391a856a_vxq3yf.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731151039/6711fb914c8b7c2b391a8568_aux8vr.webp"
]
boulevard_c50_urls.each_with_index do |url, index|
  file = URI.open(url)
  boulevard_c50.photos.attach(io: file, filename: "boulevard_c50_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for boulevard_c50 = #{boulevard_c50.photos.attached?}"

# Cruiser 6
fat_bob_114 = Bike.create!(
  model: "2023 Harley-Davidson Fat Bob 114",
  kilometers: 0,
  body: "Cruiser",
  colour: "Denim Black",
  engine_capacity: 1868,
  registration_status: "registered",
  last_modified: Date.new(2023),
  description: "Milwaukee-Eight 114 engine, dual exhaust, signature LED headlight",
  features: "• Aggressive styling, wide tires, 2-1-2 exhaust...",
  price: 19_299,
  stock: 3,
  maximum_speed: 190,
  fuel_type: "Petrol",
  brand_id: harley_brand_id,
  category_id: cruiser_category_id,
)
fat_bob_114_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731152182/671199b896751a03b60a3dfc_mcain9.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731152183/671199b880f3a91288195953_n7apd8.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731152183/671199b817cf8e69cb47ecd3_ue2knc.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731152184/671199b802fa552db9440b14_fawujq.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731152184/671199b806d9706b6c66cd33_ygka2h.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731152187/671199b8cf317c37f02b51b4_pgj9li.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731152191/671199b85afcd549311f87a4_bkqysf.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731152189/671199b84f55e673750ce53f_bhm0ic.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731152188/671199b8e7c6451475599327_ncqh8i.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731152182/671199b888f577618b47f664_lbjx4i.jpg"
]
fat_bob_114_urls.each_with_index do |url, index|
  file = URI.open(url)
  fat_bob_114.photos.attach(io: file, filename: "fat_bob_114_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for fat_bob_114 = #{fat_bob_114.photos.attached?}"

harley_davidson = Bike.create!(
  model: "Harley-Davidson Street 500 (XG500)",
  kilometers: 1,
  body: "Recreation",
  colour: "Black",
  engine_capacity: 494,
  registration_status: "registered",
  last_modified: Date.new(2016),
  description: "4-stroke, Air/Oil cooled, 8-valve, OHV, Milwaukee-8 117 V-Twin",
  features: "Key Aggressive bodywork...",
  price: 10000,
  stock: 2,
  maximum_speed: 180,
  fuel_type: "Gas",
  brand_id: royal_enfield_brand_id,
  category_id: cruiser_category_id,
)
harley_davidson_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731058184/465009684_122112229112566265_6511613803801765087_n_fqkun2.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731057153/hpsjzrjbxypr1ed2erts.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731058184/464856582_122112229082566265_7358094979256948188_n_i4qlhq.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731058184/464845517_122112228992566265_5594588554400931574_n_qif6lj.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731058184/464845572_122112229166566265_1180241426072816452_n_vnmtwq.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731058183/464762640_122112229046566265_1762453337894209159_n_dplgui.jpg"
]
harley_davidson_urls.each_with_index do |url, index|
  file = URI.open(url)
  harley_davidson.photos.attach(io: file, filename: "harley_dividson#{index +1}.jpg", content_type: "image/jpg")
end
puts "photos were attached = #{harley_davidson.photos.attached?}"
