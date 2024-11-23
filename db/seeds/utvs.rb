# UTV 1
utv_category_id = Category.find_by(name: "UTVs" )&.id

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
uforce_600 = Bike.create!(
  model: "CFMOTO UFORCE 600",
  kilometers: 297,
  body: "Utility",
  colour: "True Trima Camo",
  engine_capacity: 580,
  registration_status: "registered",
  last_modified: Date.new(2023),
  description: "580cc single-cylinder, liquid-cooled engine with automatic CVT",
  features: "• 580cc, single-cylinder, liquid-cooled engine delivering robust power and torque, perfect for off-road adventures, work, and utility tasks
  • Electronic Fuel Injection (EFI) system for improved fuel efficiency, smoother engine response, and reliable performance across various terrains
  • Fully automatic transmission with high/low range gearing and a selectable 2WD/4WD system for enhanced traction and versatility in both rough and smooth terrain
  • Durable, heavy-duty chassis with a long-travel suspension system, including independent A-arm front suspension and rear dual shock absorbers for a smooth ride on uneven ground
  • Ergonomically designed cabin with a comfortable, adjustable seat, roomy footrests, and high ground clearance for added comfort and control in rugged conditions
  • 12-inch alloy wheels with aggressive tires that provide excellent grip and stability on dirt, mud, gravel, and rocky paths
  • Large, 300kg towing capacity and generous cargo bed with 500kg payload capacity, making the UFORCE 600 an ideal choice for heavy-duty work and hauling
  • LED headlights and taillights for improved visibility and durability, ensuring safe travel even in low-light conditions
  • Hydraulic disc brakes for precise and effective stopping power on various surfaces
  • Digital dashboard with key ride information including speed, trip meter, fuel level, and more for easy monitoring on the go
  • CFMOTO’s reputation for durability, low maintenance, and high-quality build, ensuring reliable performance for work, recreation, and exploration.",
  price: 10499,
  stock: 7,
  maximum_speed: 70,
  fuel_type: "Petrol",
  brand_id: cfmoto_brand_id,
  category_id: utv_category_id,
)
uforce_600_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731143394/670f3e431ecbc311052a4457_wl1sjk.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731143395/670f3e4347137e35e379241b_xhs7mx.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731143398/67108ebd4dbd0f4a32320a4e_oxqfwy.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731143402/67108ebdbd5ca16d041de493_l4ti5o.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731143401/67108ebd341f3b19e312b6d7_uxpnf3.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731143399/67108ebd77a35950293be94f_idcp4r.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731143404/67108ebddd9c84149576a6c0_txo6e0.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731143406/67108ebdfb175d54a20ffde8_nqu57d.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731143408/67108ebdf921a74ba96d1d8b_xrg1cc.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731143393/670f3e43d35e7e344026f8a1_xpcezz.webp"
]
uforce_600_urls.each_with_index do |url, index|
  file = URI.open(url)
  uforce_600.photos.attach(io: file, filename: "uforce_600_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for uforce_600 = #{uforce_600.photos.attached?}"

# UTV 2
ranger_xp_1000 = Bike.create!(
  model: "Ranger XP 1000 Premium",
  kilometers: 1,
  body: "Utility",
  colour: "Black",
  engine_capacity: 999,
  registration_status: "registered",
  last_modified: Date.new(2020),
  description: "999cc ProStar engine with electronic power steering",
  features: "• 999cc, twin-cylinder, liquid-cooled engine providing powerful performance and impressive torque, designed for tough jobs and off-road adventures
  • High-performance ProStar engine with Electronic Fuel Injection (EFI) for smooth acceleration and reliable fuel efficiency, ensuring optimum power in various terrains
  • Full-time 4WD with an On-Demand True AWD system for exceptional traction and stability, ideal for navigating rough trails, mud, and rocky paths
  • Robust, heavy-duty chassis and independent rear suspension (IRS) with 12.25 inches of rear suspension travel for a smooth, comfortable ride over challenging terrain
  • 11 inches of ground clearance and a 2,000 lbs towing capacity, making the Ranger XP 1000 Premium perfect for hauling heavy loads, equipment, or trailers
  • Large 27-inch tires with durable wheels for added grip, allowing confident maneuvering on a variety of surfaces
  • Comfortable seating for up to three passengers with ample legroom and ergonomic features, ensuring a smooth ride on long trips
  • Advanced 7-inch touchscreen display for easy access to key information like GPS navigation, ride modes, and more
  • LED headlights and a premium audio system for improved visibility and enjoyment during night rides or while working after dark
  • Premium trim features, including high-quality upholstery, a locking glove box, and enhanced fit and finish for a more refined off-road experience
  • Polaris’ renowned durability and reliability, backed by a reputation for rugged performance and minimal maintenance requirements.",
  price: 12999,
  stock: 4,
  maximum_speed: 80,
  fuel_type: "Petrol",
  brand_id: polaris_brand_id,
  category_id: utv_category_id,
)
ranger_xp_1000_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731143869/66d9be366e5a0c080b4cee19_ucret1.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731143869/66d9be36f1be1338b162da42_dcgv1y.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731143869/66d9be40c2464439d13079c5_oarnh3.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731143869/66d9be4782e766080740f249_axpijf.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731143870/66d9be40912c977b5d05a74a_v8y1sv.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731143869/66d9be38fa9db516ec6eab0d_k5w6vs.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731143869/66d9be263b179e0287142643_ww3mp3.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731143869/66d9be4eef414e70003fd82d_ui2k6j.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731143869/66d9be4c0586bb5b1479a3b7_bmggx1.webp"
]
ranger_xp_1000_urls.each_with_index do |url, index|
  file = URI.open(url)
  ranger_xp_1000.photos.attach(io: file, filename: "ranger_xp_1000_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for ranger_xp_1000 = #{ranger_xp_1000.photos.attached?}"

# UTV 3
mule_pro_fx = Bike.create!(
  model: "Kawasaki Mule Pro-FX",
  kilometers: 1,
  body: "Utility",
  colour: "Camo",
  engine_capacity: 812,
  registration_status: "registered",
  last_modified: Date.new(2024),
  description: "812cc three-cylinder, fuel-injected engine with CVT",
  features: "• 812cc, three-cylinder, liquid-cooled engine providing smooth, reliable power for demanding work tasks and off-road exploration
  • Electronic Fuel Injection (EFI) for improved fuel efficiency, consistent performance, and easier starting in various weather conditions
  • Durable, heavy-duty chassis designed to handle tough workloads and off-road adventures, with 4WD capabilities for exceptional traction across rugged terrain
  • Independent rear suspension (IRS) and long-travel front suspension system, offering a smooth and comfortable ride even on rough and uneven surfaces
  • Class-leading 1,000 lbs cargo bed capacity and a towing capacity of up to 2,000 lbs, ideal for hauling heavy loads or towing equipment on the job site
  • Spacious, comfortable cabin with room for up to three passengers, featuring ergonomic seating and a tilt steering wheel for added convenience
  • 10.5 inches of ground clearance, allowing for better obstacle clearance and improved maneuverability in challenging terrain
  • LED headlights for superior visibility during night rides or in low-light conditions, with an added benefit of low power consumption
  • Large 26-inch tires for enhanced grip and stability, providing traction over mud, rocks, and dirt roads
  • Easy-to-use digital display for monitoring essential vehicle information such as speed, fuel level, and trip data
  • Kawasaki’s reputation for reliability and toughness, backed by a commitment to long-lasting performance, minimal maintenance, and a high standard of durability.",
  price: 10299,
  stock: 5,
  maximum_speed: 75,
  fuel_type: "Petrol",
  brand_id: kawasaki_brand_id,
  category_id: utv_category_id,
)
mule_pro_fx_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731144435/671c880f8aba3276cb3c416a_f2bpwp.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731144434/671c880e8aba3276cb3c4168_uo0xog.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731143870/66d9be40912c977b5d05a74a_v8y1sv.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731144435/671c88118aba3276cb3c416d_sbvnoo.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731144435/671c88108aba3276cb3c416b_il1ukn.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731144435/671c88118aba3276cb3c416c_j2wotv.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731144435/671c88118aba3276cb3c416e_lvqnuw.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731144436/671c88138aba3276cb3c4171_eslxuv.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731144436/671c88128aba3276cb3c4170_uxjhql.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731144435/671c88128aba3276cb3c416f_jrf4xu.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731144441/671c88148aba3276cb3c4174_pgpupc.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731144441/671c88148aba3276cb3c4173_kffftw.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731144436/671c88138aba3276cb3c4172_wnxzkv.webp"

]
mule_pro_fx_urls.each_with_index do |url, index|
  file = URI.open(url)
  mule_pro_fx.photos.attach(io: file, filename: "mule_pro_fx_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for mule_pro_fx = #{mule_pro_fx.photos.attached?}"

# UTV 4
defender_hd10 = Bike.create!(
  model: "2023 Can-Am Defender HD10",
  kilometers: 1350,
  body: "Utility",
  colour: "Mossy Oak",
  engine_capacity: 976,
  registration_status: "registered",
  last_modified: Date.new(2023),
  description: "976cc V-twin engine with intelligent throttle control",
  features: "• 976cc, V-twin, liquid-cooled engine delivering exceptional power and torque for heavy-duty tasks, off-road adventures, and rugged terrain
  • Rotax® HD10 engine with advanced Electronic Fuel Injection (EFI) for smooth throttle response, fuel efficiency, and reliable performance under various conditions
  • Visco-Lok QE auto-locking front differential, providing optimal traction and stability on slippery or uneven surfaces, ensuring confidence in challenging off-road conditions
  • High-strength chassis and robust suspension with dual A-arm front and rear suspension, offering 13 inches of front and 12.5 inches of rear suspension travel for a smooth ride on rough trails
  • 1,500 lbs of towing capacity and a 1,000 lbs payload capacity in the cargo box, making it ideal for hauling tools, equipment, and materials on the job site or off-road
  • Spacious cabin with seating for three, designed for comfort and ease, with ergonomic seating and easy access to controls
  • Large 27-inch tires for superior ground clearance and traction, perfect for navigating mud, rocks, sand, and snow
  • High-performance LED headlights for improved visibility in low-light conditions and during nighttime rides
  • Can-Am's industry-leading DPS (Dynamic Power Steering) system for precise handling and effortless steering in all conditions
  • Digital display showing essential ride data including speed, fuel level, and trip information for easy monitoring while on the go
  • Built with Can-Am's reputation for durability and reliability, ensuring long-lasting performance and minimal maintenance.",
  price: 16_999,
  stock: 3,
  maximum_speed: 85,
  fuel_type: "Petrol",
  brand_id: canam_brand_id,
  category_id: utv_category_id,
)
defender_hd10_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731145033/6726378ce8bcb5298973f976_qkqmzz.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731145033/67263796c2f83705ef58a31b_jlmt3c.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731145033/67263796b8fa8b0ac4517bf3_fi8stm.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731145033/67263796b251ef69701af3c3_itbxds.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731145034/67263796c3be347b1d35c2dd_v2tl6p.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731145033/67263796c4b5a550bd1fc534_jssbrw.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731145034/67263796e199102574270fc4_xnmffs.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731145039/672637968764ac5a5e41ee43_etlp0y.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731145040/6726379632faef6b626f2864_pt2a6f.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731145038/672637963b02836576215664_d6jvsm.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731145038/67263796ea916718e422ed6b_y3kr3z.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731145038/67263796ecd6225ab94459e8_dreq0j.webp"
]
defender_hd10_urls.each_with_index do |url, index|
  file = URI.open(url)
  defender_hd10.photos.attach(io: file, filename: "defender_hd10_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for defender_hd10 = #{defender_hd10.photos.attached?}"

# UTV 5
pro_xp_ultimate = Bike.create!(
  model: "Polaris RZR Pro XP Ultimate",
  kilometers: 268,
  body: "Sport/Recreation",
  colour: "Black",
  engine_capacity: 925,
  registration_status: "registered",
  last_modified: Date.new(2022),
  description: "925cc twin-cylinder turbo engine with CVT",
  features: "• 925cc turbocharged engine delivering an impressive 181 horsepower, providing unrivaled power and acceleration for extreme off-road performance
  • High-performance, variable-tuned exhaust system for optimized engine response and enhanced durability, designed for maximum power output on the toughest trails
  • Dynamix Elite active suspension system with 3 inches of adjustability, offering superior ride comfort and precision handling on rough, rocky, or uneven terrain
  • 64-inch wide stance and 22 inches of ground clearance for exceptional stability and the ability to tackle steep inclines, rocks, and obstacles with ease
  • Fully independent suspension with 18 inches of front and 22 inches of rear travel for smooth handling and control, even at high speeds or over rough trails
  • Polaris' exclusive Smart-Way power steering system, delivering precise steering control and responsiveness, making the RZR Pro XP Ultimate easy to handle in any off-road condition
  • Premium digital dash with a 7-inch touchscreen, showing ride metrics such as speed, fuel level, GPS, and trip information for easy monitoring
  • High-performance LED lighting for superior visibility during night rides, including a bright LED light bar
  • 29-inch tires with beadlock rims, providing excellent traction, durability, and a smooth ride across a variety of surfaces
  • Durable, heavy-duty frame and cage designed for safety, stability, and long-lasting performance in extreme conditions
  • Enhanced comfort features, including plush seating, adjustable harnesses, and ample legroom for extended trail rides.",
  price: 23999,
  stock: 2,
  maximum_speed: 90,
  fuel_type: "Petrol",
  brand_id: polaris_brand_id,
  category_id: utv_category_id,
)
pro_xp_ultimate_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731145593/66f5c90fbfe37b4a9f340803_ak9nhk.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731145597/66f5cc5297c4a540b56b8c89_klvzai.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731145597/66f5c9291726ee1ed931ec83_pc9upk.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731145594/66f5c9b7f4da4b59c022d8d9_vpjcwl.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731145594/66f5c99cdb60924d4e6a3da5_m5hdso.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731145593/66f5c9d0ec73980f9e61bbf3_vpsfbm.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731145593/66f5c91b3785484c626610df_ibhbjr.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731145592/66f5c9de0b3ae73c9d2642d4_wy9kfr.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731145591/66f5c9b0b01c0c45855b00d1_fh1k1s.webp"
]
pro_xp_ultimate_urls.each_with_index do |url, index|
  file = URI.open(url)
  pro_xp_ultimate.photos.attach(io: file, filename: "pro_xp_ultimate_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for pro_xp_ultimate = #{pro_xp_ultimate.photos.attached?}"

# UTV 6
teryx_krx_1000 = Bike.create!(
  model: "Teryx KRX® 1000 Trail Edition",
  kilometers: 1,
  body: "Utility",
  colour: "Black",
  engine_capacity: 999,
  registration_status: "registered",
  last_modified: Date.new(2024),
  description: "999cc parallel-twin engine with CVT transmission",
  features: "• 999cc, twin-cylinder, liquid-cooled engine delivering exceptional power and torque, designed to tackle even the most challenging off-road trails and rugged environments
  • High-performance, long-travel suspension system with independent front and rear suspension, offering 21 inches of front and 24 inches of rear suspension travel for a smooth ride on tough terrain
  • Durable and rugged chassis with a 64-inch width, providing exceptional stability and agility, ideal for high-speed trail rides and navigating tight spots
  • Heavy-duty Fox® 2.5 Podium LSC (Low-Speed Compression) shocks, delivering superior comfort and handling, allowing for fine-tuned suspension adjustments on the fly
  • 32-inch tires with beadlock wheels, providing excellent traction and durability across mud, rocks, sand, and snow
  • Optimized steering system with power-assisted steering, ensuring precise handling and effortless maneuvering on even the most technical trails
  • Aggressive styling with bold graphics, enhanced by LED headlights for improved visibility during night rides and in low-light conditions
  • Spacious, ergonomic cockpit with a comfortable bench seat and harness-style seatbelts, designed for comfort and safety during long rides
  • 2,000 lbs towing capacity and 600 lbs cargo bed capacity, perfect for hauling gear or supplies during trail adventures or work tasks
  • Kawasaki’s reputation for durability and performance, backed by a robust build quality and minimal maintenance needs, ensuring long-lasting enjoyment in all conditions.",
  price: 17000,
  stock: 4,
  maximum_speed: 95,
  fuel_type: "Petrol",
  brand_id: kawasaki_brand_id,
  category_id: utv_category_id,
)
teryx_krx_1000_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731146290/67285c4c0ed6ce71406a2e77_qmskzy.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731146290/67285c4d0ed6ce71406a2e7a_ohoedf.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731146291/67285c4d0ed6ce71406a2e7b_ay1cwy.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731146291/67285c4e0ed6ce71406a2e7c_hvdgre.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731146291/67285c4c0ed6ce71406a2e78_yuwtu6.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731146292/67285c4c0ed6ce71406a2e79_y2qgn2.webp"
]
teryx_krx_1000_urls.each_with_index do |url, index|
  file = URI.open(url)
  teryx_krx_1000.photos.attach(io: file, filename: "teryx_krx_1000_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for teryx_krx_1000 = #{teryx_krx_1000.photos.attached?}"
puts "Bikes created #{Bike.count}"
