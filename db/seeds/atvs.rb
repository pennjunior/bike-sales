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
kingquad = Bike.create!(
  model: "KingQuad 500AXi Power steering",
  category_id: atv_category_id,
  kilometers: 1,
  body: "Utility/Agriculture",
  colour: "Black",
  engine_capacity: 493,
  registration_status: "registered",
  last_modified: Date.new(2023),
  description: "Suzuki KingQuad 500AXi Power Steering SE+...",
  features: "• Rugged and aggressive bodywork design, optimized for utility and off-road performance
  • Advanced power steering system for improved handling and reduced rider fatigue
  • High-performance 493cc liquid-cooled, single-cylinder, four-stroke engine for reliable power
  • Fully independent suspension system for exceptional ride comfort on uneven terrain
  • Sealed front and rear disc brakes for consistent stopping power in all conditions
  • Durable chassis and skid plates for enhanced protection in rugged environments
  • Multi-function digital instrument panel with clear readouts for speed, fuel level, and more
  • Ergonomic seat and handlebar positioning for rider comfort during long hours of use
  • Versatile towing capacity and heavy-duty racks for transporting tools or cargo
  • Compact yet sturdy design, perfect for agricultural, utility, or recreational applications
  • High-capacity fuel tank for extended rides without frequent refueling
  • Engine braking system for better control on steep descents
  • Water-resistant storage compartments for added convenience in all weather conditions
  • Easy-to-use push-button 2WD/4WD drive selection for tackling diverse terrains effortlessly
  • Aggressive all-terrain tires for superior traction in mud, snow, or loose dirt.",
  price: 3599.0,
  stock: 6,
  brand_id: suzuki_brand_id,
  maximum_speed: 65,
  fuel_type: "Gas"
)
  kingquad_urls = [
    "https://res.cloudinary.com/drxr1eiwp/image/upload/v1730637756/IMG_3113_fuyl4f.jpg",
    "https://res.cloudinary.com/drxr1eiwp/image/upload/v1730637756/IMG_3111_hr3sc5.jpg",
    "https://res.cloudinary.com/drxr1eiwp/image/upload/v1730637755/IMG_3116_qj6pxi.jpg",
    "https://res.cloudinary.com/drxr1eiwp/image/upload/v1730637756/IMG_3112_rhwbdp.jpg",
    "https://res.cloudinary.com/drxr1eiwp/image/upload/v1730637756/IMG_3110_zevqkd.jpg",
    "https://res.cloudinary.com/drxr1eiwp/image/upload/v1730637756/IMG_3115_drzznz.jpg",
    "https://res.cloudinary.com/drxr1eiwp/image/upload/v1730637756/IMG_3114_jcgccf.jpg"
  ]

  kingquad_urls.each_with_index do |url, index|
    file = URI.open(url)
    kingquad.photos.attach(io: file, filename: "kingquad#{index +1}.jpg", content_type: "image/jpg")
  end
puts "photos were attached kingquad500Axi #{kingquad.photos.attached?}"

honda_crf = Bike.create!(
  model: "Honda CRF250L MY17",
  kilometers: 2342,
  body: "Dual Purpose",
  colour: "Red/Black",
  engine_capacity: 249,
  registration_status: "registered",
  last_modified: Date.new(2018),
  description: "4-stroke, Air/Oil cooled, 8-valve, OHV, Milwaukee-8 117 V-Twin",
  features: "• Lightweight and compact chassis, perfect for both on-road and off-road riding
• High-performance 249cc liquid-cooled, single-cylinder, four-stroke engine for smooth power delivery
• Programmed Fuel Injection (PGM-FI) system for efficient fuel consumption and consistent throttle response
• Long-travel suspension system with Showa inverted front forks for excellent handling on rough terrain
• Durable steel frame designed for maximum stability and resilience during off-road adventures
• Comfortable and slim seat profile for enhanced rider movement and control
• Digital instrument panel with speedometer, tachometer, fuel gauge, and clock for easy monitoring
• Dual-purpose tires with exceptional grip for navigating dirt trails and paved roads
• Lightweight aluminum swingarm for improved rear suspension performance and reduced weight
• Electric start system for quick and reliable ignition in all conditions
• Rear disc brake and wave-style front disc brake for strong and consistent stopping power
• Stylish, aggressive bodywork inspired by Honda’s championship-winning motocross bikes
• Conveniently located fuel tank with 7.8L capacity for extended riding without frequent refueling
• Street-legal design with headlight, taillight, and turn signals for urban commutes and trail riding
• Dependable Honda engineering for long-lasting reliability and minimal maintenance.",
  price: 6990,
  stock: 3,
  maximum_speed: 70,
  fuel_type: "Petrol",
  brand_id: honda_brand_id,
  category_id: dirtbike_category_id,
)

honda_crf_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731059318/464835135_122112225692566265_3600363701933991500_n_kubzsq.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731059314/464755486_122112226004566265_2414815065483848386_n_dq2adq.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731059317/464788725_122112225962566265_3447283973303195275_n_pj1d23.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731059314/464783371_122112226076566265_60535621919032782_n_nfmwoz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731059314/464764198_122112225752566265_3585905178530062509_n_mhwm5r.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731059321/464918434_122112226106566265_8675415117024308726_n_hwgfyg.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731059320/464878010_122112225920566265_7507211695904901061_n_sx37vs.jpg"
]

honda_crf_urls.each_with_index do |url, index|
  file = URI.open(url)
  honda_crf.photos.attach(io: file, filename: "honda_crf#{index +1}.jpg", content_type: "image/jpg")
end
puts "photos were attached hindacrf #{honda_crf.photos.attached?}"

polaris = Bike.create!(
  model: "Polaris Sportsman 570 UTE HD",
  kilometers: 5873,
  body: "Agriculture",
  colour: "Blue",
  engine_capacity: 567,
  registration_status: "registered",
  last_modified: Date.new(2016),
  description: "4-stroke, Air/Oil cooled, 8-valve, OHV, Milwaukee-8 117 V-Twin",
  features: "Powerful 567cc ProStar single-cylinder, four-stroke engine delivering reliable and smooth performance
  • Heavy-duty (HD) design for demanding utility and off-road tasks
  • Industry-leading independent rear suspension (IRS) for superior ride comfort and handling on rough terrain
  • Heavy-duty cargo bed with a 180kg capacity for hauling tools, supplies, or equipment
  • High ground clearance of 11 inches for navigating over rocks, logs, and uneven surfaces with ease
  • Durable steel front and rear racks for added cargo versatility
  • Electronic Fuel Injection (EFI) system ensuring easy starts and consistent performance in all weather conditions
  • On-demand True All-Wheel Drive (AWD) system for superior traction on challenging terrain
  • Engine braking system (EBS) and Active Descent Control (ADC) for confident downhill control
  • Ergonomic seat and handlebar positioning for all-day riding comfort
  • Multi-function digital display with speedometer, odometer, fuel gauge, and maintenance indicators
  • Sealed steel front bumper for enhanced durability and protection
  • Easy-access maintenance points to reduce downtime and keep the ATV in top condition
  • Aggressive all-terrain tires designed for mud, gravel, and dirt performance
  • High-capacity fuel tank for extended workdays or trail adventures.",
  price: 3500,
  stock: 5,
  maximum_speed: 96,
  fuel_type: "Petrol",
  brand_id: polaris_brand_id,
  category_id: atv_category_id
)
polaris_url = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731096020/IMG_8544_fbbjrg.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731096021/IMG_8543_mrr3zk.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731096020/IMG_8545_lws97e.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731096020/IMG_8540_cw2dor.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731096020/IMG_8541_bih5qh.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731096020/IMG_8539_ouaqxh.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731096020/IMG_8542_aaqdx4.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731096019/IMG_8538_by59qv.jpg"
]
polaris_url.each_with_index do |url, index|
  file = URI.open(url)
  polaris.photos.attach(io: file, filename: "polaris#{index + 1}.jpg", content_type: "image/jpg")
end
puts "Polaris photos were attached = #{polaris.photos.attached?}"

cforce = Bike.create!(
  model: "CFMOTO Cforce 850 EPS",
  kilometers: 1,
  body: "Agriculture",
  colour: "Black",
  engine_capacity: 800,
  registration_status: "registered",
  last_modified: Date.new(2023),
  description: "4-stroke, Air/Oil cooled, 8-valve, OHV, Milwaukee-8 117 V-Twin",
  features: "• Powerful 800cc liquid-cooled, V-twin, four-stroke engine for exceptional performance and torque
  • Electronic Power Steering (EPS) for effortless handling and reduced rider fatigue on all terrains
  • Fully independent suspension system with high-travel A-arms for superior comfort and control
  • Durable 14-inch alloy wheels paired with aggressive all-terrain tires for enhanced traction and stability
  • On-demand 2WD/4WD drive modes with a locking differential for tackling challenging terrain with ease
  • Dual hydraulic disc brakes for reliable and consistent stopping power in all conditions
  • High-strength steel frame designed for durability and rugged use
  • Multi-function digital dashboard displaying speed, fuel, gear, and maintenance alerts
  • Comfortable two-up seating with backrest and grab handles for a second passenger
  • Heavy-duty front and rear racks with impressive cargo capacities for utility and work applications
  • Towing capacity of up to 550kg, making it ideal for agriculture or hauling heavy loads
  • High ground clearance of 11.2 inches to navigate rocks, mud, and uneven surfaces effortlessly
  • LED headlights and taillights for improved visibility and safety during low-light conditions
  • Engine braking system for enhanced downhill control and smoother rides
  • Water-resistant storage compartments for carrying essentials in any weather.",
  price: 4899,
  stock: 5,
  maximum_speed: 96,
  fuel_type: "Petrol",
  brand_id: polaris_brand_id,
  category_id: atv_category_id,
)
cforce_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731096021/IMG_8555_eupolw.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731096021/IMG_8554_y8i55m.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731096021/IMG_8552_a4k1s5.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731096021/IMG_8553_jfglic.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731096021/IMG_8550_lubl4j.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731096021/IMG_8551_w5qohg.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731096022/IMG_8549_feznpc.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731096022/IMG_8548_azfd0m.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731096021/IMG_8546_r3zpnz.jpg"
]
cforce_urls.each_with_index do |url, index|
  file = URI.open(url)
  cforce.photos.attach(io: file, filename: "cforce#{index + 1}", content_type: "image/jpg")
end
puts "images attached for cforce = #{cforce.photos.attached?}"

# ATV 2
renegade_xmr = Bike.create!(
  model: "Can-Am Renegade X MR 1000R",
  kilometers: 491,
  body: "Utility",
  colour: "Black",
  engine_capacity: 1000,
  registration_status: "registered",
  last_modified: Date.new(2023),
  description: "91-hp Rotax V-twin engine with Smart-Lok differential",
  features: "• High-performance 976cc Rotax V-twin engine with liquid cooling, delivering unmatched power and torque
  • Intelligent Throttle Control (iTC) with selectable riding modes for precision handling and adaptability
  • Heavy-duty snorkeled air intake and relocated CVT system for superior performance in mud and water
  • FOX 1.5 Podium QS3 shocks for customizable suspension settings and excellent ride comfort on rough terrain
  • Premium 14-inch aluminum wheels with 30-inch ITP Cryptid mud tires for maximum traction in wet and muddy conditions
  • Dynamic Power Steering (DPS) for effortless maneuverability and reduced steering effort
  • High ground clearance of 13 inches to tackle deep mud, rocks, and uneven terrain with ease
  • Fully lockable 4WD system with Visco-4Lok front differential for exceptional traction in extreme conditions
  • Rugged steel front bumper and heavy-duty skid plates for added protection in challenging environments
  • Ergonomic sport seat for enhanced rider control and comfort during aggressive riding
  • Digital multi-function display with speed, RPM, gear position, fuel level, and maintenance alerts
  • LED headlights and taillights for superior visibility during night or low-light conditions
  • Sturdy rear rack for small cargo storage or equipment transportation
  • Aggressive and eye-catching bodywork, built for performance and durability in extreme conditions.",
  price: 10999,
  stock: 3,
  maximum_speed: 105,
  fuel_type: "Petrol",
  brand_id: canam_brand_id,
  category_id: atv_category_id
)
renegade_xmr_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731112245/66cf498abd18380f9773775b_lmwdo6.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731112245/66cf493e9fda6a47e763b094_bn3zac.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731112245/66cf4976e998a364f95e1dc3_rlppcm.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731112245/66cf49f52f3431691f27f326_orfh3q.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731112245/66cf4976e356a51eff74f173_poskgj.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731112246/66cf4968bdcc7174c307bb57_fo68ua.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731112245/66cf4989e6b13a0523421673_mvkwst.webp"
]
renegade_xmr_urls.each_with_index do |url, index|
  file = URI.open(url)
  renegade_xmr.photos.attach(io: file, filename: "renegade_xmr_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for renegade_xmr = #{renegade_xmr.photos.attached?}"

# ATV 3
grizzly_eps = Bike.create!(
  model: "Yamaha Grizzly EPS",
  kilometers: 1,
  body: "Utility",
  colour: "Black/blue",
  engine_capacity: 686,
  registration_status: "registered",
  last_modified: Date.new(2023),
  description: "Powerful 686cc engine with advanced chassis design for durability",
  features: "• Potent 686cc liquid-cooled, SOHC, four-stroke engine delivering robust power and torque for challenging trails
  • Electronic Power Steering (EPS) for precise handling and reduced rider fatigue on all terrains
  • Ultramatic® automatic transmission with dual-range (Hi/Lo) drive and reverse for seamless power delivery
  • On-Command® 3-way locking differential with 2WD, 4WD, and full diff-lock modes for superior traction control
  • Independent double wishbone suspension with adjustable shocks for optimal comfort and performance
  • Durable 26-inch Maxxis® tires mounted on 12-inch cast aluminum wheels for excellent grip and stability
  • High-mounted air intake and sealed drive system for reliable performance in wet and muddy conditions
  • Digital multifunction display with speedometer, odometer, trip meter, fuel gauge, and maintenance indicators
  • Sturdy front and rear cargo racks with impressive load capacities for carrying tools, gear, or supplies
  • Heavy-duty front bumper and full-length skid plates for enhanced protection in rugged environments
  • Ergonomically designed seat and handlebar layout for all-day riding comfort
  • Powerful halogen headlights and LED taillights for improved visibility in low-light conditions
  • Easy-to-access maintenance points for hassle-free servicing and upkeep
  • High ground clearance of 11.3 inches for tackling rocks, logs, and uneven terrain effortlessly
  • Yamaha’s renowned build quality and reliability for long-lasting performance and durability.",
  price: 9000,
  stock: 4,
  maximum_speed: 85,
  fuel_type: "Petrol",
  brand_id: yamaha_brand_id,
  category_id: atv_category_id
)
grizzly_eps_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731122324/671e1db4f8a23b7b546d9cf4_1_j45quk.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731122324/671e1db5f8a23b7b546d9cf5_mvk79o.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731122324/671e1db5f8a23b7b546d9cf7_tlsvnx.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731122325/671e1db6f8a23b7b546d9cf9_l8gfft.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731122324/671e1db6f8a23b7b546d9cf8_pdri7h.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731122324/671e1db5f8a23b7b546d9cf6_jtsk2w.webp"
]
grizzly_eps_urls.each_with_index do |url, index|
  file = URI.open(url)
  grizzly_eps.photos.attach(io: file, filename: "grizzly_eps_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for grizzly_eps = #{grizzly_eps.photos.attached?}"

# ATV 4
foreman_rubicon = Bike.create!(
  model: "Honda Foreman Rubicon 520",
  kilometers: 1814,
  body: "Utility",
  colour: "Military Tan",
  engine_capacity: 518,
  registration_status: "registered",
  last_modified: Date.new(2023),
  description: "520cc fuel-injected engine with automatic DCT transmission",
  features: "• Powerful 518cc liquid-cooled, single-cylinder, four-stroke engine providing smooth and consistent power
  • Advanced Honda DCT (Dual Clutch Transmission) for seamless shifting and superior control in all conditions
  • Selectable 2WD/4WD with a locking front differential for exceptional traction on challenging terrains
  • Independent rear suspension (IRS) for superior ride comfort and handling over rocks, ruts, and rough trails
  • Electronic fuel injection (EFI) for reliable starting and consistent performance across varying altitudes and temperatures
  • Durable steel frame designed for maximum strength and stability, ideal for heavy-duty tasks
  • High ground clearance of 9.4 inches, making it easy to navigate obstacles and uneven terrain
  • Heavy-duty front and rear racks for carrying cargo, tools, or gear with impressive weight capacity
  • Sealed drive system and high-mounted air intake to protect against mud, water, and debris
  • Comfortable seat and ergonomic handlebars for long rides with reduced rider fatigue
  • Multifunction digital display with clear readouts of speed, fuel level, trip meter, and more
  • LED headlights for improved visibility, making it ideal for low-light conditions
  • Industry-leading reliability and build quality typical of Honda products for longevity and minimal maintenance
  • Rugged 25-inch tires for excellent traction in mud, dirt, and gravel.",
  price: 5499,
  stock: 6,
  maximum_speed: 75,
  fuel_type: "Petrol",
  brand_id: honda_brand_id,
  category_id: atv_category_id
)
foreman_rubicon_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731123042/6724719e4654f3321f7638aa_fmmghb.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731123042/6724719d4654f3321f7638a6_gmoqua.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731123042/6724719f4654f3321f7638ac_sha3pn.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731123043/672471a04654f3321f7638af_teekw0.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731123042/6724719f4654f3321f7638ab_xik8vz.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731123041/6724719e4654f3321f7638a9_g0hbxb.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731123041/6724719d4654f3321f7638a8_1_tsvwny.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731123041/6724719d4654f3321f7638a7_sa3vlw.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731123041/6724719d4654f3321f7638a8_upi4nx.webp"
]
foreman_rubicon_urls.each_with_index do |url, index|
  file = URI.open(url)
  foreman_rubicon.photos.attach(io: file, filename: "foreman_rubicon_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for foreman_rubicon = #{foreman_rubicon.photos.attached?}"

# ATV 5
brute_force_750 = Bike.create!(
  model: "Kawasaki Brute Force 750 4x4i EPS",
  kilometers: 1,
  body: "Recreation/Utility",
  colour: "White",
  engine_capacity: 749,
  registration_status: "registered",
  last_modified: Date.new(2023),
  description: "749cc V-twin engine with electric power steering",
  features: "• Powerful 749cc V-twin engine delivering exceptional torque and horsepower for superior off-road performance
  • Electronic Power Steering (EPS) for effortless handling and reduced steering fatigue during long rides
  • On-demand 4WD system with variable front differential lock for optimal traction on challenging terrains
  • Fully independent suspension system for improved comfort and stability over rough trails and obstacles
  • Advanced CVT transmission with high/low range for smooth, responsive power delivery in all conditions
  • Heavy-duty front and rear racks with impressive cargo capacities for carrying tools, gear, or heavy loads
  • Ergonomic seating and handlebars for a comfortable riding position and reduced fatigue over long distances
  • High ground clearance of 10.5 inches for improved ability to clear obstacles like rocks and deep ruts
  • Digital display with speedometer, odometer, fuel gauge, and trip meter for easy monitoring of key metrics
  • Aggressive 26-inch tires on durable 12-inch wheels for excellent traction and durability in mud, snow, or dirt
  • Twin headlights and rear brake lights for enhanced visibility in low-light conditions
  • Sturdy front and rear bumpers for added protection during off-road adventures
  • Robust braking system with dual hydraulic disc brakes for confident stopping power in all conditions
  • Kawasaki’s renowned build quality for long-lasting reliability and minimal maintenance.",
  price: 6599,
  stock: 4,
  maximum_speed: 90,
  fuel_type: "Petrol",
  brand_id: kawasaki_brand_id,
  category_id: atv_category_id
)
brute_force_750_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731124491/670fd5e19cc1e37eed129126_okibfl.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731124491/670fd5e49cc1e37eed12912c_kszhyr.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731124491/670fd5e29cc1e37eed129128_le3hog.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731124492/670fd5e59cc1e37eed12912d_lcxgrl.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731124491/670fd5e29cc1e37eed129129_h8cr5i.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731124492/670fd5e59cc1e37eed12912e_sbgqv3.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731124491/670fd5e19cc1e37eed129127_1_chbgte.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731124491/670fd5e19cc1e37eed129127_jxixm5.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731124492/670fd5e99cc1e37eed129136_szbvmm.webp"
]
brute_force_750_urls.each_with_index do |url, index|
  file = URI.open(url)
  brute_force_750.photos.attach(io: file, filename: "brute_force_750_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for brute_force_750 = #{brute_force_750.photos.attached?}"

# ATV 6
sportsman_570 = Bike.create!(
  model: "Polaris Sportsman 570",
  kilometers: 1,
  body: "Recreational/Utility",
  colour: "White Lightning",
  engine_capacity: 567,
  registration_status: "registered",
  last_modified: Date.new(2023),
  description: "567cc single-cylinder ProStar engine with all-wheel drive",
  features: "• Powerful 567cc ProStar single-cylinder, four-stroke engine delivering reliable power for work and play
  • Electronic Fuel Injection (EFI) for consistent performance in any weather, easy starts, and improved fuel efficiency
  • On-demand all-wheel drive (AWD) system for superior traction and handling across a wide variety of terrains
  • Independent Rear Suspension (IRS) for a smooth, comfortable ride over rough trails and uneven surfaces
  • High ground clearance of 10.5 inches for navigating rocks, ruts, and deep mud without getting stuck
  • Dual front and rear racks with impressive cargo capacities for carrying gear, tools, or heavy loads
  • Active Descent Control (ADC) and engine braking system for added stability and control when descending steep terrain
  • Rugged, 25-inch tires designed for all-terrain performance, providing excellent traction in mud, snow, and gravel
  • Multi-function digital display with speedometer, fuel gauge, trip meter, and maintenance alerts for convenience
  • Comfortable, ergonomically designed seat for long rides with reduced rider fatigue
  • Heavy-duty front bumper and full skid plate protection for durability in harsh environments
  • LED headlights and taillights for better visibility and safety during night or low-light conditions
  • Polaris’ industry-leading build quality for long-lasting reliability and minimal maintenance.",
  price: 4799,
  stock: 8,
  maximum_speed: 85,
  fuel_type: "Petrol",
  brand_id: polaris_brand_id,
  category_id: atv_category_id
)
sportsman_570_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731125099/67261176b5574d45ed02b074_pioncq.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731125099/67261174b5574d45ed02b070_fc8fzl.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731125100/67261176b5574d45ed02b076_cpfpwe.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731125100/67261175b5574d45ed02b073_nuzhzk.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731125100/67261176b5574d45ed02b075_hxkysv.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731125100/67261174b5574d45ed02b071_gilezz.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731125100/67261175b5574d45ed02b072_ophiso.webp"
]
sportsman_570_urls.each_with_index do |url, index|
  file = URI.open(url)
  sportsman_570.photos.attach(io: file, filename: "sportsman_570_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for sportsman_570 = #{sportsman_570.photos.attached?}"

# ATV 7
kingquad_750 = Bike.create!(
  model: "Suzuki KingQuad 750AXi Power Steering",
  kilometers: 1,
  body: "Utility",
  colour: "True Timber",
  engine_capacity: 722,
  registration_status: "registered",
  last_modified: Date.new(2023),
  description: "722cc single-cylinder engine with automatic transmission",
  features: "• 722cc liquid-cooled, DOHC, four-stroke engine delivering smooth, powerful performance for all types of riding
  • Advanced power steering (APS) for enhanced handling, reduced steering effort, and improved control on rough trails
  • On-demand 2WD/4WD system with a fully lockable front differential for superior traction on challenging terrains
  • Independent rear suspension (IRS) for a smooth, comfortable ride over uneven ground and obstacles
  • Rugged and durable steel frame designed to withstand tough conditions while maintaining excellent stability
  • High ground clearance of 10.5 inches to easily clear rocks, logs, and other obstacles in rugged environments
  • Electronic Fuel Injection (EFI) for reliable starts, better throttle response, and improved fuel efficiency
  • Large, durable front and rear racks with a total capacity of up to 140 kg for carrying tools, gear, or supplies
  • Aggressive, all-terrain tires for maximum grip and traction in mud, snow, and loose dirt
  • Multifunction digital display providing key metrics like speed, fuel level, trip meter, and more
  • Sealed front and rear brakes for consistent stopping power, even in wet or muddy conditions
  • Comfortable, ergonomically designed seat and handlebars for reduced rider fatigue during long rides
  • Integrated heavy-duty bumpers for additional protection during off-road adventures
  • Suzuki’s reputation for reliability and durability, ensuring long-lasting performance and minimal maintenance.",
  price: 9649,
  stock: 3,
  maximum_speed: 80,
  fuel_type: "Petrol",
  brand_id: suzuki_brand_id,
  category_id: atv_category_id
)
kingquad_750_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731127006/6708a57a42578251c0076856_fyptg4.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731127006/6708a57b42578251c0076857_rrlna3.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731127006/6708a57b42578251c0076859_wmmcqm.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731127006/6708a57d42578251c007685c_cuvcp3.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731127006/6708a57c42578251c007685a_fmosb8.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731127006/6708a57d42578251c007685d_lcllal.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731127006/6708a57b42578251c0076858_dl1szu.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731127006/6708a57c42578251c007685b_i0okfn.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731127007/6708a57e42578251c007685f_zgx7hd.jpg"
]
kingquad_750_urls.each_with_index do |url, index|
  file = URI.open(url)
  kingquad_750.photos.attach(io: file, filename: "kingquad_750_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for kingquad_750 = #{kingquad_750.photos.attached?}"

# ATV 8
outlander_850 = Bike.create!(
  model: "Can-Am Outlander 850",
  kilometers: 1,
  body: "Recreation/Utility",
  colour: "Red",
  engine_capacity: 854,
  registration_status: "registered",
  last_modified: Date.new(2024),
  description: "854cc Rotax V-twin engine with Intelligent Throttle Control",
  features: "• 854cc Rotax V-twin engine providing exceptional power and torque for tackling the toughest trails and workloads
  • Continuously Variable Transmission (CVT) with high/low range for smooth, responsive power delivery in all conditions
  • On-demand 4WD system with Visco-Lok QE front differential for outstanding traction in challenging terrain
  • Tri-Mode Dynamic Power Steering (DPS) offering three levels of steering assist for optimal handling and comfort
  • Heavy-duty front and rear racks with impressive cargo capacities for hauling gear, tools, or supplies
  • Independent rear suspension (IRS) for superior ride comfort, stability, and smooth handling over rough trails
  • Aggressive 26-inch ITP Terracross tires for excellent grip and durability in mud, dirt, and snow
  • Multi-function digital display with key metrics such as speed, fuel gauge, trip meter, and more
  • High ground clearance of 11 inches for easy navigation over rocks, logs, and uneven surfaces
  • Front and rear disc brakes with a powerful braking system for smooth and consistent stopping power
  • LED headlights and taillights for enhanced visibility in low-light or night riding conditions
  • Comfortable, ergonomic seat and handlebars to reduce rider fatigue during extended rides
  • Can-Am’s reputation for high-performance engineering and long-lasting reliability for minimal maintenance.",
  price: 6199,
  stock: 2,
  maximum_speed: 95,
  fuel_type: "Petrol",
  brand_id: canam_brand_id,
  category_id: atv_category_id
)
outlander_850_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731127917/657ca31e40ca191ec646e7a6_zu7cx2.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731127916/665fe642a98f2d5f6a4177f8_btladb.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731127917/665fe643a41d302ebf287e9f_uvggc6.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731127917/665fe64383f21810985be566_uylsvl.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731127917/665fe64446f69f4a36615d30_us2whp.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731127917/665fe64346f0e21abd0bc699_crdqsz.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731127917/665fe64346f0e21abd0bc69c_q1eljp.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731127917/665fe64405db2673a10b043b_wyeyzb.webp"
]
outlander_850_urls.each_with_index do |url, index|
  file = URI.open(url)
  outlander_850.photos.attach(io: file, filename: "outlander_850_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for outlander_850 = #{outlander_850.photos.attached?}"

# ATV 9
rancher_420 = Bike.create!(
  model: "Honda Rancher 420",
  kilometers: 2,
  body: "Recreation/Utility",
  colour: "Black Forest Green",
  engine_capacity: 420,
  registration_status: "registered",
  last_modified: Date.new(2023),
  description: "420cc single-cylinder, fuel-injected engine",
  features: "• Reliable 420cc liquid-cooled, single-cylinder, four-stroke engine providing smooth and consistent power
  • Available with a choice of electric shift or manual transmission for ease of use and full control
  • Selectable 2WD/4WD system for optimal traction and versatility in various terrain conditions
  • Independent rear suspension (IRS) for improved ride comfort and handling on rough trails and uneven ground
  • Durable steel frame designed to withstand tough environments while offering excellent stability
  • Advanced Programmed Fuel Injection (PGM-FI) system for reliable starts and consistent performance in all weather
  • High ground clearance of 9.4 inches, making it ideal for navigating obstacles like rocks, logs, and mud
  • Strong front and rear racks with a combined weight capacity for carrying tools, equipment, or cargo
  • Ergonomic seat and handlebar design for comfort during extended rides and reduced rider fatigue
  • Multi-function digital display with speedometer, fuel gauge, trip meter, and other essential readouts
  • Aggressive 25-inch tires that offer exceptional traction and durability on dirt, mud, or gravel
  • Powerful hydraulic disc brakes for dependable stopping power in all riding conditions
  • Honda’s reputation for reliability and longevity, ensuring low maintenance and a long-lasting ATV experience.",
  price: 4299,
  stock: 10,
  maximum_speed: 70,
  fuel_type: "Petrol",
  brand_id: honda_brand_id,
  category_id: atv_category_id
)
rancher_420_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731128347/670b65daf5feaf38953aa627_ccb34j.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731128347/670b65dff5feaf38953aa629_lyvnbf.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731128347/670b65ddf5feaf38953aa628_scvpdt.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731128347/670b65d7f5feaf38953aa626_hzzmf5.webp"
]
rancher_420_urls.each_with_index do |url, index|
  file = URI.open(url)
  rancher_420.photos.attach(io: file, filename: "rancher_420_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for rancher_420 = #{rancher_420.photos.attached?}"

# ATV 10
scrambler_xp_1000 = Bike.create!(
  model: "Scrambler XP 1000 S",
  kilometers: 1,
  body: "Sport",
  colour: "Light Green",
  engine_capacity: 952,
  registration_status: "registered",
  last_modified: Date.new(2024),
  description: "952cc ProStar engine with premium suspension",
  features: "• Powerful 952cc twin-cylinder, four-stroke engine delivering exceptional power and torque for aggressive off-road performance
  • High-performance Electronic Fuel Injection (EFI) system for smooth power delivery and reliable starts in all conditions
  • Dual A-arm front suspension and fully independent rear suspension (IRS) with 14 inches of travel for a smooth, controlled ride over rough terrain
  • On-demand all-wheel drive (AWD) system with a front differential lock for superior traction in challenging conditions
  • 27-inch tires mounted on 14-inch wheels for excellent grip and durability in mud, dirt, and rocky trails
  • High ground clearance of 13.5 inches for easy navigation over obstacles like rocks, logs, and deep ruts
  • Premium 10.25-inch wide stance for improved stability and handling on uneven trails and off-road obstacles
  • Dual-disc hydraulic braking system with ventilated rotors for reliable, consistent stopping power in all environments
  • Multi-function digital display showing speed, RPM, fuel level, trip meter, and other important metrics
  • Aggressive, high-performance chassis and body design for maximum durability and style
  • LED headlights and tail lights for better visibility and safety during low-light conditions
  • Comfortable and ergonomically designed seat and handlebars for long rides with reduced rider fatigue
  • Polaris’ renowned reliability, ensuring minimal maintenance and optimal performance for a long-lasting ATV experience.",
  price: 11299,
  stock: 2,
  maximum_speed: 110,
  fuel_type: "Petrol",
  brand_id: polaris_brand_id,
  category_id: atv_category_id
)
scrambler_xp_1000_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731129015/6729a98fa2b5a811af7715cc_qy82un.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731129015/6729a98fc50fa5486363754e_ncpsyu.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731129015/6729a98f6a7cd65b52066333_kyx18e.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731129016/6729a98f1e07df1537591484_sn1cyp.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731129016/6729a98f0ed0c701d724140e_zddcil.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731129016/6729a98fd18a3e451b2707ee_senmaz.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731129016/6729a98feae38f31f25d4e6e_yesvyu.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731129016/6729a990b6673f27e01d017c_pqrmz1.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731129015/6729a98f802c1d51e93e4d47_ap6gce.webp"
]
scrambler_xp_1000_urls.each_with_index do |url, index|
  file = URI.open(url)
  scrambler_xp_1000.photos.attach(io: file, filename: "scrambler_xp_1000_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for scrambler_xp_1000 = #{scrambler_xp_1000.photos.attached?}"

puts "All ATVs created with images attached."

# ATV 11
sportsman_xp_1000 = Bike.create!(
  model: "Polaris Sportsman XP 1000",
  kilometers: 1,
  body: "Utility",
  colour: "Matte Titanium",
  engine_capacity: 952,
  registration_status: "registered",
  last_modified: Date.new(2023),
  description: "952cc ProStar twin-cylinder engine with electronic power steering",
  features: "• High-performance 952cc ProStar twin-cylinder engine delivering exceptional power, torque, and acceleration for challenging off-road trails
  • On-demand all-wheel drive (AWD) system with an easy-to-use push-button 4WD selection for superior traction and stability on uneven terrain
  • Independent Rear Suspension (IRS) with 9.5 inches of travel for a smooth and comfortable ride, even on the roughest trails
  • Aggressive 27-inch tires on 14-inch cast aluminum wheels for outstanding grip, durability, and traction in all conditions
  • 13.5 inches of ground clearance for easy navigation over rocks, logs, and deep ruts without getting stuck
  • Electronic Fuel Injection (EFI) for reliable starting and smooth, consistent performance in varying weather and elevations
  • Integrated front and rear cargo racks with a combined load capacity of up to 600 pounds, perfect for hauling tools or gear
  • Dual front disc brakes and rear hydraulic disc brakes for reliable stopping power, even in wet or muddy conditions
  • Multi-function digital display providing key metrics such as speed, fuel gauge, odometer, and maintenance alerts
  • Ergonomically designed seat and handlebars for maximum comfort during long rides
  • Durable steel chassis and protective skid plates for added strength and protection in tough off-road environments
  • Polaris’ renowned reliability and build quality for minimal maintenance and lasting durability.",
  price: 10999,
  stock: 4,
  maximum_speed: 100,
  fuel_type: "Petrol",
  brand_id: polaris_brand_id,
  category_id: atv_category_id
)
sportsman_xp_1000_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731129810/A9DF7125-2744-406D-BA60-29ACC5857100_sah52d.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731129810/07457E7D-2477-44DF-863E-8D965ACB9212_qtvhq0.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731129810/533EA53E-76F9-44AD-8115-A43E71003B00_qsdfce.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731129810/8F2ADB48-7C91-43D7-B16D-A19B318D88B1_sfhhyl.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731129810/6828B776-CA0A-47D5-BA57-7119D65D2B45_m19amz.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731129810/586240BE-DC8A-41DC-8A49-C3C7A549564D_sbnygy.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731129811/78391627-2B5F-44A3-9916-461C88399E03_wv5yhj.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731129811/D406BB0C-79A5-4A43-89DE-DC7AEF6BB413_ad04fm.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731129811/BD8E3E8B-6B4E-4F50-9773-9CD68791CFD7_xqwdcb.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731129811/F08BED8B-F48F-419B-B4DA-D31682DB3168_cpokqe.jpg"
]
sportsman_xp_1000_urls.each_with_index do |url, index|
  file = URI.open(url)
  sportsman_xp_1000.photos.attach(io: file, filename: "sportsman_xp_1000_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for sportsman_xp_1000 = #{sportsman_xp_1000.photos.attached?}"

# ATV 12
outlander_max_850 = Bike.create!(
  model: "Outlander MAX XT 850",
  kilometers: 1,
  body: "Utility",
  colour: "Grey",
  engine_capacity: 854,
  registration_status: "registered",
  last_modified: Date.new(2023),
  description: "854cc Rotax V-twin engine with Intelligent Throttle Control",
  features: "• Powerful 854cc Rotax V-twin engine delivering impressive power and torque for tackling tough trails and heavy-duty tasks
  • Continuously Variable Transmission (CVT) with high/low range for smooth, responsive power delivery across varying terrains
  • Dual-mode 4WD system with Visco-Lok QE front differential for optimal traction in mud, snow, or rocky trails
  • Independent rear suspension (IRS) with 9 inches of travel for a smooth and comfortable ride over rough trails and obstacles
  • High ground clearance of 11 inches, allowing easy navigation over rocks, logs, and deep ruts without getting stuck
  • Tri-Mode Dynamic Power Steering (DPS) for three levels of steering assist, enhancing maneuverability and reducing rider fatigue
  • Multi-function digital display with speedometer, fuel gauge, trip meter, and maintenance alerts for easy monitoring
  • Heavy-duty front and rear racks with impressive cargo capacity, perfect for hauling tools, gear, or supplies
  • 26-inch tires mounted on aluminum wheels for excellent durability, traction, and handling on various terrains
  • Comfortable two-up seating with passenger backrest and grab handles for an enjoyable and secure ride for two
  • Aggressive LED headlights and taillights for enhanced visibility and safety during night or low-light riding conditions
  • Integrated front bumper and skid plates for added protection against rocks and debris
  • Can-Am’s renowned engineering for high-performance durability and minimal maintenance.",
  price: 9299,
  stock: 3,
  maximum_speed: 100,
  fuel_type: "Petrol",
  brand_id: canam_brand_id,
  category_id: atv_category_id
)
outlander_max_850_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731130419/6711df9011e4c339cc7a4fb7_l1kggk.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731130419/6711df9011e4c339cc7a4fb8_easott.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731130419/6711df9011e4c339cc7a4fb9_zynzjo.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731130419/6711df8f11e4c339cc7a4fb6_mammvw.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731130419/6711df9211e4c339cc7a4fbc_fqbq50.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731130419/6711df9111e4c339cc7a4fbb_kculeh.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731130419/6711df9111e4c339cc7a4fba_tkytcm.webp"
]
outlander_max_850_urls.each_with_index do |url, index|
  file = URI.open(url)
  outlander_max_850.photos.attach(io: file, filename: "outlander_max_850_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for outlander_max_850 = #{outlander_max_850.photos.attached?}"

# ATV 13
grizzly_xtr = Bike.create!(
  model: "Grizzly EPS XT-R",
  kilometers: 1,
  body: "Utility",
  colour: "Tactical Black",
  engine_capacity: 686,
  registration_status: "registered",
  last_modified: Date.new(2021),
  description: "686cc liquid-cooled SOHC engine, Ultramatic transmission",
  features: "• Powerful 708cc liquid-cooled, SOHC, four-stroke engine providing smooth, reliable performance for rugged off-road adventures
  • Ultramatic® automatic transmission with high/low range for seamless and responsive power delivery on any terrain
  • On-demand 4WD system with a locking front differential for superior traction on challenging trails, mud, and snow
  • Independent double wishbone suspension with 9.1 inches of front and 10.1 inches of rear travel for an incredibly smooth ride
  • High ground clearance of 11.8 inches, ideal for navigating rocks, logs, and deep ruts without getting stuck
  • Electronic Power Steering (EPS) for reduced steering effort, better control, and enhanced handling in rough environments
  • Aggressive 27-inch Maxxis® tires mounted on cast aluminum wheels for superior grip and durability on various terrains
  • Heavy-duty front and rear racks with a combined weight capacity of up to 270 kg for hauling gear, tools, or supplies
  • Multifunction digital display with speedometer, fuel gauge, trip meter, and other essential metrics for convenience
  • LED headlights and taillights for improved visibility during night riding or low-light conditions
  • Comfortable and ergonomically designed seat and handlebar layout for reduced rider fatigue during long rides
  • Premium steel front and rear bumpers and skid plates for added protection in tough off-road environments
  • Yamaha’s reputation for reliability and durability, ensuring long-lasting performance with minimal maintenance.",
  price: 7899,
  stock: 5,
  maximum_speed: 85,
  fuel_type: "Petrol",
  brand_id: yamaha_brand_id,
  category_id: atv_category_id
)
grizzly_xtr_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731131340/66fc1e2e7bbcb87b8a48f2b8_vq60yg.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731131339/66fc1e2d7bbcb87b8a48f2b6_l2mth9.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731131340/66fc1e307bbcb87b8a48f2bc_tvw8iq.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731131340/66fc1e2d7bbcb87b8a48f2b7_u2efrg.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731131340/66fc1e2f7bbcb87b8a48f2bb_cnksua.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731131340/66fc1e2f7bbcb87b8a48f2ba_bs1xpd.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731131340/66fc1e2e7bbcb87b8a48f2b9_imvtum.webp"
]
grizzly_xtr_urls.each_with_index do |url, index|
  file = URI.open(url)
  grizzly_xtr.photos.attach(io: file, filename: "grizzly_xtr_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for grizzly_xtr = #{grizzly_xtr.photos.attached?}"

# ATV 14
kingquad_500 = Bike.create!(
  model: "KingQuad 500AXi Power Steering SE",
  kilometers: 1,
  body: "Recreation/Utility",
  colour: "Armored Blue Gray",
  engine_capacity: 493,
  registration_status: "registered",
  last_modified: Date.new(2025),
  description: "493cc single-cylinder, liquid-cooled engine with auto transmission",
  features: "• 493cc liquid-cooled, DOHC, four-stroke engine providing strong and reliable performance for both work and recreation
  • Advanced Power Steering (APS) for smooth, effortless handling and improved control on rough trails and uneven terrain
  • On-demand 2WD/4WD system with a fully lockable front differential for superior traction in challenging conditions
  • Independent Rear Suspension (IRS) for a comfortable and stable ride over rocks, logs, and rough terrain
  • High ground clearance of 10.5 inches to easily clear obstacles like deep ruts and rocky trails
  • Electronic Fuel Injection (EFI) for easy starts, efficient fuel use, and consistent performance across varying conditions
  • Durable steel frame designed for maximum strength and stability in tough environments
  • Aggressive 25-inch tires with excellent traction and durability for mud, snow, or dirt
  • Large front and rear racks with a combined capacity for hauling tools, gear, or supplies
  • Multifunction digital display showing speed, fuel level, trip meter, and more for convenience and easy monitoring
  • Full-length skid plates and heavy-duty bumpers for enhanced protection and durability
  • Comfortable ergonomic seat and handlebars for reduced rider fatigue on long rides
  • LED headlights for superior visibility during night or low-light conditions
  • Suzuki's reputation for long-lasting reliability and low-maintenance performance.",
  price: 10799,
  stock: 6,
  maximum_speed: 75,
  fuel_type: "Petrol",
  brand_id: suzuki_brand_id,
  category_id: atv_category_id
)
kingquad_500_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731131992/6721271d0cfe621deb22a343_lqbkkb.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731131992/6721271d7b3fc41b845965a3_zeftre.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731131992/6721271d0cfe621deb22a343_lqbkkb.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731131996/6721271dba47e0641a5c44bc_v8ttve.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731131993/6721271d85e28e6d7b781dc5_qdg6yb.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731131993/6721271d51e40745310a1f6a_wazv7g.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731131997/6721271df91b807eb1656d77_gdbbdq.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731131996/6721271df91b807eb1656d76_lsl5k8.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731131996/6721271dcbd6596daf20d468_edtwwj.webp"
]
kingquad_500_urls.each_with_index do |url, index|
  file = URI.open(url)
  kingquad_500.photos.attach(io: file, filename: "kingquad_500_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for kingquad_500 = #{kingquad_500.photos.attached?}"

# ATV 15
renegade_xc = Bike.create!(
  model: "Can-Am Renegade XC 850",
  kilometers: 1,
  body: "Sport",
  colour: "Desert Tan",
  engine_capacity: 854,
  registration_status: "registered",
  last_modified: Date.new(2023),
  description: "Rotax V-twin engine with advanced CVT transmission",
  features: "• 854cc Rotax V-twin engine delivering powerful acceleration and torque for aggressive off-road performance
  • Continuously Variable Transmission (CVT) with high/low range for smooth, controlled power delivery on all types of terrain
  • Advanced Visco-Lok QE front differential providing on-demand 4WD with smooth and reliable traction in challenging environments
  • Tri-Mode Dynamic Power Steering (DPS) offering three levels of steering assist for improved handling and reduced rider fatigue
  • Fully independent suspension with 9.5 inches of front and 9 inches of rear travel for a smooth and controlled ride over rough trails
  • 26-inch Maxxis® Bighorn 2.0 tires for superior grip and durability in mud, dirt, and rocky terrain
  • High ground clearance of 11 inches, perfect for navigating over obstacles like rocks, logs, and deep ruts
  • Multifunction digital display with key information like speed, fuel level, trip meter, and maintenance alerts
  • Aggressive LED headlights and taillights for improved visibility in low-light conditions
  • Comfortable and ergonomic seat design with durable materials for long-lasting comfort during extended rides
  • Front and rear racks for carrying up to 240 pounds of gear, tools, or supplies
  • Full skid plates and reinforced bumpers for added protection in rugged conditions
  • Can-Am's renowned build quality for reliability and minimal maintenance over the long term.",
  price: 3999,
  stock: 3,
  maximum_speed: 105,
  fuel_type: "Petrol",
  brand_id: canam_brand_id,
  category_id: atv_category_id
)
renegade_xc_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731132515/6706d35b0f155373225ab518_j8a6ls.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731132516/6706d35a0f155373225ab517_yff8ue.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731132516/6706d35d0f155373225ab51a_vn8ezf.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731132516/6706d35c0f155373225ab519_ump7cu.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731132515/6706d35a0f155373225ab516_zcdkdf.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731132520/6706d35f0f155373225ab51d_h3ejrn.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731132519/6706d35e0f155373225ab51c_jxa78d.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731132517/6706d35d0f155373225ab51b_jaizhe.webp"
]
renegade_xc_urls.each_with_index do |url, index|
  file = URI.open(url)
  renegade_xc.photos.attach(io: file, filename: "renegade_xc_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for renegade_xc = #{renegade_xc.photos.attached?}"

# ATV 16
foreman_450 = Bike.create!(
  model: "Honda Foreman 450",
  kilometers: 2,
  body: "Utility",
  colour: "Olive Green",
  engine_capacity: 450,
  registration_status: "registered",
  last_modified: Date.new(2024),
  description: "450cc air-cooled, OHV engine, durable automatic transmission",
  features: "• Reliable 450cc liquid-cooled, single-cylinder, four-stroke engine delivering smooth and consistent power for a variety of tasks
  • Selectable 2WD/4WD system for optimal traction and control in diverse terrains, from rocky trails to muddy paths
  • Independent Rear Suspension (IRS) providing superior ride comfort and improved handling over rough and uneven ground
  • Rugged steel frame built for durability and stability in tough work environments and off-road adventures
  • Easy-to-use Electric Shift Program (ESP) for quick and precise gear shifting, with a choice between manual or automatic modes
  • High ground clearance of 9.4 inches, ideal for navigating obstacles such as rocks, logs, and deep mud without getting stuck
  • Heavy-duty front and rear racks with a combined capacity for carrying up to 264 pounds of cargo or tools
  • Dependable hydraulic disc brakes for strong, consistent stopping power, even in wet or muddy conditions
  • Multifunction digital display providing essential information such as speed, fuel level, and trip meter for convenience
  • Comfortable, ergonomically designed seat and handlebars to reduce rider fatigue on long rides
  • Honda's renowned reliability and low-maintenance engineering for years of dependable performance in tough environments.",
  price: 4699,
  stock: 10,
  maximum_speed: 70,
  fuel_type: "Petrol",
  brand_id: honda_brand_id,
  category_id: atv_category_id
)
foreman_450_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731133101/671b36c72805f479ab0a7a7f_rjz9sp.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731133102/671b36c92805f479ab0a7a84_gmqsct.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731133102/671b36c82805f479ab0a7a81_xudh0f.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731133101/671b36c72805f479ab0a7a80_nxswhk.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731133106/671b36c92805f479ab0a7a86_bahl6e.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731133103/671b36c92805f479ab0a7a85_fkmkk8.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731133102/671b36c82805f479ab0a7a82_teeqdi.webp"
]
foreman_450_urls.each_with_index do |url, index|
  file = URI.open(url)
  foreman_450.photos.attach(io: file, filename: "foreman_450_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for foreman_450 = #{foreman_450.photos.attached?}"

# ATV 17
foreman_500 = Bike.create!(
  model: "FourTrax Foreman Rubicon 4x4 EPS",
  kilometers: 2,
  body: "Recreation/Utility",
  colour: "Hero Red",
  engine_capacity: 518,
  registration_status: "registered",
  last_modified: Date.new(2024),
  description: "518cc fuel-injected OHV engine, automatic dual-clutch transmission",
  features: "• 520cc liquid-cooled, single-cylinder, four-stroke engine delivering smooth, reliable power for demanding work and tough trails
  • Electronic Fuel Injection (EFI) for easy starting, consistent performance, and improved fuel efficiency in all weather conditions
  • Selectable 2WD/4WD system with automatic front differential lock for superior traction in a variety of terrains
  • Independent Rear Suspension (IRS) with 9.1 inches of travel for a smooth, comfortable ride over rough trails and obstacles
  • Electric Power Steering (EPS) for effortless handling, reducing steering fatigue and improving control on rugged terrain
  • High ground clearance of 9.4 inches, ideal for navigating rocks, logs, and deep ruts without getting stuck
  • Durable steel frame designed for toughness and long-lasting performance in both work and recreational environments
  • Heavy-duty front and rear racks with impressive cargo capacity for carrying tools, gear, or supplies
  • Reliable hydraulic disc brakes providing consistent stopping power in all conditions, even in mud or water
  • Multi-function digital display showing speed, fuel level, trip meter, and other essential metrics for easy monitoring
  • Ergonomically designed seat and handlebars for added comfort during extended rides
  • Honda's reputation for durability and low maintenance, ensuring years of reliable service in tough conditions.",
  price: 8699,
  stock: 5,
  maximum_speed: 80,
  fuel_type: "Petrol",
  brand_id: honda_brand_id,
  category_id: atv_category_id,
)
foreman_500_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731139012/672668b60004e27c867fe174_twj7tb.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731139018/672668b66932fa65410ca334_labtni.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731139019/672668b674312114333e6e93_koknpr.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731139012/672668b6003d033b0146d965_rtzz0y.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731139011/672668b675f91645f6010ea4_ertaiw.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731138846/672668b634f0da43fb2fe463_ydryqd.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731138789/672668b6dae4bd1f3f1e8413_vc1aqo.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731138788/672668b6a013407fa46a4ad4_dmq9df.webp"
]
foreman_500_urls.each_with_index do |url, index|
  file = URI.open(url)
  foreman_500.photos.attach(io: file, filename: "foreman_500_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for foreman_500 = #{foreman_500.photos.attached?}"

# ATV 18
scrambler_850 = Bike.create!(
  model: "Polaris Scrambler 850",
  kilometers: 2958,
  body: "Sport",
  colour: "White",
  engine_capacity: 850,
  registration_status: "registered",
  last_modified: Date.new(2016),
  description: "850cc ProStar engine, all-wheel drive",
  features: "• 850cc twin-cylinder engine delivering powerful performance and exceptional acceleration for thrilling off-road adventures
  • On-demand all-wheel drive (AWD) system with front differential lock for optimal traction and control on varied terrains
  • Independent Rear Suspension (IRS) with 9.5 inches of travel for a smooth, comfortable ride over rough trails and obstacles
  • Dual A-arm front suspension providing 8.2 inches of travel for excellent handling and stability on uneven terrain
  • Aggressive 27-inch tires with excellent grip and durability, designed to tackle mud, sand, and rocky trails
  • High ground clearance of 11.5 inches to easily navigate over rocks, logs, and deep ruts without getting stuck
  • Premium aluminum wheels and rugged chassis designed for maximum durability and protection against harsh off-road conditions
  • Electronic Fuel Injection (EFI) for reliable starts, consistent performance, and improved fuel efficiency
  • Multi-function digital display showing speed, fuel level, trip meter, and maintenance alerts for convenient monitoring
  • Dual front and rear disc brakes for powerful, consistent stopping performance in all conditions
  • Comfortable, ergonomic seat and handlebars to reduce rider fatigue during long rides
  • LED headlights and taillights for enhanced visibility and safety in low-light or night riding conditions
  • Polaris’ reputation for long-lasting performance and minimal maintenance, ensuring a reliable off-road experience.",
  price: 3199,
  stock: 4,
  maximum_speed: 105,
  fuel_type: "Petrol",
  brand_id: polaris_brand_id,
  category_id: atv_category_id,
)
scrambler_850_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731139491/670fd5dcbdb59a7f9e0f28a7_oduifj.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731139492/670fd5dcee2bab61d80669c1_grkpyt.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731139494/670fd5dcff3466076123be09_rxq7kz.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731139489/670fd5dc8672756368267c16_k47xon.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731139488/670fd5dc478bd25db4308881_xdigqr.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731139487/670fd5dc9a54763c20701225_oagqm1.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731139485/670fd5dc7c426d25c9599eb2_sz6seu.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731139485/670fd5dc2e68e771a917720f_vomd7t.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731139485/670fd5dc2d67116fa9610bf4_dpq8wa.webp"
]
scrambler_850_urls.each_with_index do |url, index|
  file = URI.open(url)
  scrambler_850.photos.attach(io: file, filename: "scrambler_850_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for scrambler_850 = #{scrambler_850.photos.attached?}"

# ATV 19
grizzly_700 = Bike.create!(
  model: "Grizzly EPS SE",
  kilometers: 1,
  body: "Utility",
  colour: "Silver",
  engine_capacity: 686,
  registration_status: "registered",
  last_modified: Date.new(2024),
  description: "686cc liquid-cooled SOHC engine, Ultramatic transmission",
  features: "• 708cc liquid-cooled, SOHC, four-stroke engine delivering smooth and reliable power for tackling tough trails and heavy-duty tasks
  • Ultramatic® automatic transmission with high/low range for seamless and responsive power delivery across varying terrains
  • On-demand 4WD system with a locking front differential for optimal traction and control on muddy, rocky, or loose terrain
  • Independent double wishbone suspension with 9.1 inches of front and 10.1 inches of rear travel for a smooth ride over rough trails
  • High ground clearance of 11.8 inches to easily navigate obstacles such as rocks, logs, and deep ruts without getting stuck
  • Electronic Power Steering (EPS) for reduced steering effort, improved control, and less rider fatigue on challenging trails
  • Aggressive 27-inch Maxxis® tires mounted on cast aluminum wheels for superior grip and durability in a variety of off-road conditions
  • Durable, heavy-duty front and rear racks with a combined capacity of 264 pounds for hauling gear, tools, or supplies
  • Multi-function digital display showing speed, fuel gauge, trip meter, and other key information for easy monitoring
  • LED headlights and taillights for enhanced visibility during low-light or night riding conditions
  • Comfortable, ergonomic seat and handlebars designed to reduce rider fatigue during long rides
  • Full skid plates and front/rear bumpers for added protection in rugged environments
  • Yamaha's renowned reliability and durability, ensuring a long-lasting, low-maintenance off-road experience.",
  price: 10_399,
  stock: 6,
  maximum_speed: 90,
  fuel_type: "Petrol",
  brand_id: yamaha_brand_id,
  category_id: atv_category_id
)
grizzly_700_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731140152/6722208ff014c66f3d2b1426_ufdpkd.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731140152/6722208f6061813d6e78fe46_nk5rxl.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731140152/6722208fa5792067234d50ed_kcwitr.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731140153/67237267b3402870562b50f3_rwja24.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731140156/67237267e397564b8c6f00bb_alnrwg.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731140348/67237267561dfa10a169705f_v7htne.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731140158/6723726734e4e701b05235e1_b3pux0.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731140156/672372676ebc25576366f535_om8oad.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731140348/672372676576592afe261213_1_ylmepn.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731140350/672372676576592afe261213_2_cvgxbq.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731140352/672372676576592afe261213_dgpxhn.webp"
]
grizzly_700_urls.each_with_index do |url, index|
  file = URI.open(url)
  grizzly_700.photos.attach(io: file, filename: "grizzly_700_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for grizzly_700 = #{grizzly_700.photos.attached?}"

# ATV 20
renegade_570 = Bike.create!(
  model: "RENEGADE 570EFI R",
  kilometers: 2434,
  body: "Sport",
  colour: "Red",
  engine_capacity: 570,
  registration_status: "registered",
  last_modified: Date.new(2018),
  description: "570cc Rotax V-twin engine, intelligent throttle control",
  features: "• 570cc Rotax® EFI engine delivering a perfect balance of power and efficiency for both trail riding and work tasks
  • Electronic Fuel Injection (EFI) system ensuring reliable starts and consistent performance in various weather conditions
  • Advanced Visco-Lok front differential for enhanced traction on slippery or uneven terrain, providing smooth 4WD performance
  • Tri-Mode Dynamic Power Steering (DPS) offering three levels of steering assist for improved handling and reduced rider fatigue
  • Independent Rear Suspension (IRS) with 9 inches of travel for a smooth ride over rough trails and obstacles
  • 26-inch ITP® Terracross tires for superior grip, durability, and handling in mud, dirt, and snow
  • High ground clearance of 11 inches to easily navigate rocks, logs, and deep ruts without getting stuck
  • Dual front and rear disc brakes for reliable, responsive stopping power, even in tough, muddy conditions
  • Comfortable and ergonomic seat design for long-lasting comfort during extended rides
  • Multifunction digital display with speedometer, fuel gauge, trip meter, and maintenance alerts for easy monitoring
  • Durable front and rear racks for hauling tools, gear, or supplies with a combined capacity of 240 pounds
  • Aggressive styling and robust build quality, offering both performance and durability in rugged environments
  • Can-Am's reputation for reliability, ensuring minimal maintenance and high performance over time.",
  price: 9_799,
  stock: 4,
  maximum_speed: 90,
  fuel_type: "Petrol",
  brand_id: canam_brand_id,
  category_id: atv_category_id,
)
renegade_570_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731140870/67093aead8794611ff330795_vgayfm.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731140871/67093aead8794611ff330796_ldxtir.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731140868/67093ae7d8794611ff33078f_ra5kls.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731140867/67093ae7d8794611ff33078e_upyfts.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731140865/67093ae7d8794611ff33078d_rg1chl.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731140863/67093ae5d8794611ff33078a_xkoc8q.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731140650/67093ae3d8794611ff330784_xj6owv.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731140648/67093adfd8794611ff33077c_ltuc1b.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731140645/67093adfd8794611ff33077a_y3kixp.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731140642/67093aded8794611ff330779_v3hvps.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731140639/67093addd8794611ff330776_cdmihc.webp"
]
renegade_570_urls.each_with_index do |url, index|
  file = URI.open(url)
  renegade_570.photos.attach(io: file, filename: "renegade_570_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for renegade_570 = #{renegade_570.photos.attached?}"

# ATV 21
brute_force_300 = Bike.create!(
  model: "Brute Force® 300",
  kilometers: 1,
  body: "Recreality/Utility",
  colour: "Vibrant Green",
  engine_capacity: 271,
  registration_status: "registered",
  last_modified: Date.new(2021),
  description: "271cc single-cylinder, 4-stroke engine with CVT",
  features: "• 271cc air-cooled, single-cylinder, four-stroke engine providing reliable and smooth power for both utility and recreational use
  • Automatic transmission with high/low gearing for easy handling and adaptability in various terrain types
  • On-demand 2WD/4WD system for enhanced traction and control in mud, snow, and rough trails
  • Independent front suspension (IFS) and rear swingarm with 5.9 inches of travel for a smooth and comfortable ride
  • High ground clearance of 6.7 inches to navigate over rocks, logs, and obstacles without getting stuck
  • Durable steel frame designed for strength and stability in challenging off-road conditions
  • Aggressive 22-inch tires providing solid grip on a variety of surfaces, including dirt, sand, and gravel
  • Electronic fuel injection (EFI) for reliable starts and improved fuel efficiency in a range of conditions
  • Multi-function digital display with essential information like speed, fuel level, and trip meter for convenience
  • Ergonomic seat and handlebar design for comfort during extended rides with reduced rider fatigue
  • Durable front and rear racks with a combined capacity to haul up to 132 pounds of cargo or gear
  • Hydraulic disc brakes for responsive and effective stopping power, even in wet or muddy conditions
  • Kawasaki's reputation for reliability and low-maintenance engineering for long-lasting off-road adventures.",
  price: 3399,
  stock: 8,
  maximum_speed: 65,
  fuel_type: "Petrol",
  brand_id: kawasaki_brand_id,
  category_id: atv_category_id,
)
brute_force_300_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731141307/6710a89a12ea5c283b5dd6a6_mojofs.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731141308/6710a89a12ea5c283b5dd6a7_drhrgi.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731141308/6710a89b12ea5c283b5dd6a8_mlsvyr.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731141311/6710a89b12ea5c283b5dd6a9_aunrkw.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731141316/6725c1e9703d8e42d03a49f1_d1nqj4.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731141314/6725c1e8703d8e42d03a49ef_swkpnl.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731141312/6725c1e8703d8e42d03a49ee_zlmbsz.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731141316/6725c1e9703d8e42d03a49f2_k469rl.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731141318/6725c1e9703d8e42d03a49f3_bnsazi.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731141320/6725c1eb703d8e42d03a49f6_bfhqcy.webp"
]
brute_force_300_urls.each_with_index do |url, index|
  file = URI.open(url)
  brute_force_300.photos.attach(io: file, filename: "brute_force_300_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for brute_force_300 = #{brute_force_300.photos.attached?}"

# ATV 22
kingquad_400 = Bike.create!(
  model: "Suzuki KingQuad 400FSi",
  kilometers: 1,
  body: "Utility",
  colour: "True Timber Camo",
  engine_capacity: 376,
  registration_status: "registered",
  last_modified: Date.new(2023),
  description: "376cc single-cylinder, air-cooled engine with 5-speed manual",
  features: "• 376cc, single-cylinder, liquid-cooled, four-stroke engine delivering reliable power for a variety of off-road tasks and adventures
  • Suzuki’s Fuel Injection system for efficient fuel delivery, smooth performance, and reliable starts in various weather conditions
  • Selectable 2WD/4WD system with a fully locking front differential for superior traction on challenging terrain
  • Independent Rear Suspension (IRS) with 6.7 inches of travel for a smooth and comfortable ride over rough and uneven trails
  • High ground clearance of 8.7 inches to easily navigate obstacles like rocks, logs, and deep ruts without getting stuck
  • Automatic transmission with an easy-to-use Electric Shift Program (ESP) for effortless shifting and smooth handling
  • Durable steel frame designed for toughness and long-lasting performance in demanding work and recreational environments
  • Aggressive 25-inch tires providing excellent grip and durability in mud, dirt, and rocky conditions
  • Front and rear racks with impressive cargo capacity for hauling up to 220 pounds of gear, tools, or supplies
  • Multi-function digital display showing key metrics like speed, fuel level, trip meter, and maintenance alerts for convenience
  • Comfortable seat and ergonomic handlebars designed to reduce rider fatigue during long rides
  • Full skid plates and protective bumpers for added protection against rocks and debris in rugged environments
  • Suzuki’s reputation for reliability and minimal maintenance, ensuring a dependable and durable off-road experience.",
  price: 5339,
  stock: 7,
  maximum_speed: 70,
  fuel_type: "Petrol",
  brand_id: suzuki_brand_id,
  category_id: atv_category_id,
)
kingquad_400_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731141778/67132fc4c2c0a613ab0e392e_sc6uxa.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731141779/67132fc4c2c0a613ab0e392f_sxu8yd.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731141779/67132fc5c2c0a613ab0e3930_tdfpbr.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731141785/67132fc5c2c0a613ab0e3933_fz22w7.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731141783/67132fc5c2c0a613ab0e3932_pljbqe.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731141782/67132fc5c2c0a613ab0e3931_frj5ic.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731141786/67132fc6c2c0a613ab0e3934_gxapwz.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731141788/67132fc6c2c0a613ab0e3935_c1g8lf.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731141790/67132fc6c2c0a613ab0e3936_ynsbvl.webp"
]
kingquad_400_urls.each_with_index do |url, index|
  file = URI.open(url)
  kingquad_400.photos.attach(io: file, filename: "kingquad_400_#{index + 1}", content_type: "image/jpg")
end
puts "Images attached for kingquad_400 = #{kingquad_400.photos.attached?}"
puts "Bikes created #{Bike.count}"
