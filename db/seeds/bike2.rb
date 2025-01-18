atv_category_id = Category.find_by(name: "ATVs/Quad" )&.id

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


trailblazer = Bike.create!(
  model: "Trailblazer X500 XP",
  kilometers: 0,
  body: "Utility",
  colour: "white",
  engine_capacity: 500,
  last_modified: Date.new(2024),
  registration_status: "registered",
  description: "A rugged utility ATV perfect for heavy-duty tasks and adventurous trails.",
  features: "4x4 drive, Tow hitch, Digital speedometer, Halogen headlights",
  price: 3100,
  stock: 5,
  maximum_speed: 90,
  fuel_type: "Petrol",
  category_id: atv_category_id,
  brand_id: polaris_brand_id
)
trailblazer_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737175827/6770f49c26a0c7700707e1f0_mpjtnt.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737175827/6770f49c26a0c7700707e1ef_q5l2gy.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737175827/6770f49c26a0c7700707e1f1_xf6mkb.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737175826/6770f49d26a0c7700707e1f2_p4why1.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737175827/67690c78b66d6825f4017af6_sdpxme.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737175827/6770f49d26a0c7700707e1f3_fzzqc4.webp"
]

trailblazer_urls.each_with_index do |url, index|
  file = URI.open(url)
  trailblazer.photos.attach(io: file, filename: "trailblazer#{index + 1}.jpg", content_type: "image/jpg")
end

foreman = Bike.create!(
  model: "Honda Foreman 520",
  kilometers: 0,
  body: "Utility",
  colour: "Camo Green",
  engine_capacity: 518,
  last_modified: Date.new(2024),
  registration_status: "registered",
  description: "A reliable ATV built for farm work and outdoor exploration, featuring unmatched durability.",
  features: "Electric Power Steering, Automatic DCT Transmission, Independent Rear Suspension",
  price: 4700,
  stock: 4,
  maximum_speed: 95,
  fuel_type: "Petrol",
  category_id: atv_category_id,
  brand_id: honda_brand_id
)
foreman_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737177439/472718161_122179217804049591_6434540095914008501_n_hrd4na.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737177439/472750323_122179217870049591_8337315215498445486_n_attr11.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737177439/472689612_122179217792049591_6999170929493785891_n_v9eofj.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737177438/472637755_122179217846049591_4053781500951377380_n_hmnzuo.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737177438/472717623_122179217816049591_16798667589021582_n_ddcdwx.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737177438/472564412_122179217828049591_3084107469097812528_n_ctdt2y.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737177437/472773010_122179217858049591_1167761147453959096_n_kq0ydj.jpg"
]

foreman_urls.each_with_index do |url, index|
  file = URI.open(url)
  foreman.photos.attach(io: file, filename: "foreman#{index + 1}.jpg", content_type: "image/jpg")
end

grizzly = Bike.create!(
  model: "Yamaha Grizzly 700 EPS",
  kilometers: 0,
  body: "Recreational",
  colour: "Army stripe",
  engine_capacity: 686,
  last_modified: Date.new(2024),
  registration_status: "registered",
  description: "A high-performance recreational ATV designed for superior handling and all-terrain capability.",
  features: "Electric Power Steering, Advanced CVT Transmission, All-Wheel Drive",
  price: 2500,
  stock: 2,
  maximum_speed: 100,
  fuel_type: "Petrol",
  category_id: atv_category_id,
  brand_id: yamaha_brand_id
)
grizzly_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737177858/462589081_1062665265869164_8695926569275645677_n_my2iq7.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737177857/462490926_1062665535869137_6878254250104359124_n_kplfsi.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737177857/462627496_1062665479202476_6354081346952547102_n_safsiu.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737177856/462765286_1062665469202477_3891325918495607599_n_ufd0im.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737177856/462470291_1062665529202471_8928310100040892614_n_y3sclq.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737177856/462705541_1062665335869157_2682883832954755183_n_pgeo0m.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737177855/462776166_1062665272535830_4802693422864371979_n_oxz2gq.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737177850/462694019_1062665322535825_3083556691513199646_n_xmqt9z.jpg"
]

grizzly_urls.each_with_index do |url, index|
  file = URI.open(url)
  grizzly.photos.attach(io: file, filename: "grizzly#{index + 1}.jpg", content_type: "image/jpg")
end

outlander = Bike.create!(
  model: "Can-Am Outlander MAX XT 1000R",
  kilometers: 0,
  body: "Recreational/Utility",
  colour: "Desert Tan",
  engine_capacity: 976,
  last_modified: Date.new(20),
  registration_status: "registered",
  description: "A powerful two-up ATV with unmatched comfort and performance for outdoor enthusiasts.",
  features: "Rotax V-Twin Engine, Dynamic Power Steering, Heavy-Duty Front Bumper, Towing Capacity 750kg",
  price: 3500,
  stock: 3,
  maximum_speed: 120,
  fuel_type: "Petrol",
  category_id: atv_category_id,
  brand_id: canam_brand_id
)
outlander_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737178600/473598251_9172485652794999_4716006102062714369_n_d1frac.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737178599/473598858_9172485659461665_5118376429460922261_n_boie9i.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737178599/473998048_9172485656128332_4216892718324583260_n_dsptux.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737178599/474150056_9172485662794998_450187066339522927_n_yok94f.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737178599/473616106_9172485669461664_4703304687588560938_n_ogegtu.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737178598/473617050_9172485666128331_2523736978049984440_n_vi22ir.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737178598/474050946_9172485672794997_1386024279160592756_n_fmxz6v.jpg"
]

outlander_urls.each_with_index do |url, index|
  file = URI.open(url)
  outlander.photos.attach(io: file, filename: "outlander#{index + 1}.jpg", content_type: "image/jpg")
end

kingquad = Bike.create!(
  model: "Suzuki KingQuad 750AXi",
  kilometers: 0,
  body: "Utility",
  colour: "Red",
  engine_capacity: 722,
  last_modified: Date.new(2015),
  registration_status: "registered",
  description: "A versatile utility ATV built for tough terrains, featuring advanced suspension for superior comfort.",
  features: "Selectable 2WD/4WD, Engine Braking System, Advanced Front and Rear Suspension",
  price: 2400,
  stock: 5,
  maximum_speed: 95,
  fuel_type: "Petrol",
  category_id: atv_category_id,
  brand_id: suzuki_brand_id
)
kingquad_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737179403/473176872_2658595491001394_4578520659509240264_n_ygjvrr.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737179403/473354924_2658595481001395_2527168582032440801_n_bdl3x7.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737179403/473192892_2658595417668068_7967893386037512391_n_r9i7um.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737179404/473145614_2658595494334727_8656920027184401527_n_fdxhu2.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737179404/473283843_2658595497668060_2408775501370783443_n_l6xscw.jpg"
]

kingquad_urls.each_with_index do |url, index|
  file = URI.open(url)
  kingquad.photos.attach(io: file, filename: "kingquad#{index + 1}.jpg", content_type: "image/jpg")
end

sportsman = Bike.create!(
  model: "Polaris Sportsman XP 1000 High Lifter",
  kilometers: 0,
  body: "Mud/Recreational",
  colour: "Blue",
  engine_capacity: 952,
  last_modified: Date.new(2023),
  registration_status: "registered",
  description: "The ultimate mudding ATV with high-clearance features and all-terrain capabilities.",
  features: "Factory-installed Snorkels, 29.5-inch Mud Tires, High-Performance All-Wheel Drive",
  price: 2500,
  stock: 2,
  maximum_speed: 115,
  fuel_type: "Petrol",
  category_id: atv_category_id,
  brand_id: polaris_brand_id
)
sportsman_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737179672/473755303_10231359213141486_863163379780876652_n_emlqif.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737179678/473628686_10231359212981482_5290147539037537857_n_hxlv9u.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737179671/473762172_10231359213021483_252326851417002000_n_txn3bg.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737179670/473574865_10231359213261489_5911563565925006590_n_v5mp9g.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737179644/473771253_10231359213101485_3223452010128067309_n_ng88mr.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737179644/473716165_10231359213221488_5854173327966174941_n_mqabkr.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737179643/474035270_10231359213061484_7127948278903294855_n_riajdr.jpg"
]

sportsman_urls.each_with_index do |url, index|
  file = URI.open(url)
  sportsman.photos.attach(io: file, filename: "sportsman#{index + 1}.jpg", content_type: "image/jpg")
end

cforce = Bike.create!(
  model: "CFMOTO CForce 850 XC",
  kilometers: 0,
  body: "Recreational/Utility",
  colour: "Orange",
  engine_capacity: 800,
  last_modified: Date.new(2019),
  registration_status: "registered",
  description: "A mid-range ATV designed for balanced performance and comfort, ideal for both work and play.",
  features: "2-Up Seating, EPS (Electric Power Steering), High-Strength Winch",
  price: 3100,
  stock: 4,
  maximum_speed: 105,
  fuel_type: "Petrol",
  category_id: atv_category_id,
  brand_id: cfmoto_brand_id
)
cforce_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737180127/79436378_3171995762870747_9075161893814927360_n_xbzlss.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737180129/80087558_3171995156204141_819436067374497792_n_fqczqu.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737180127/79010097_3171995662870757_7421857998936473600_n_iiqmn3.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737180129/78650178_3171995289537461_7710874873794396160_n_gq2qdn.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737180128/78530084_3171995389537451_7629664713038626816_n_lpnar8.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737180128/78482458_3171995516204105_58112028501344256_n_pinnaq.jpg"
]

cforce_urls.each_with_index do |url, index|
  file = URI.open(url)
  cforce.photos.attach(io: file, filename: "cforce#{index + 1}.jpg", content_type: "image/jpg")
end

kodiak = Bike.create!(
  model: "Yamaha Kodiak 450",
  kilometers: 0,
  body: "Utility",
  colour: "Olive Green",
  engine_capacity: 421,
  last_modified: Date.new(2018),
  registration_status: "registered",
  description: "A compact and lightweight utility ATV designed for reliability and maneuverability on tight trails.",
  features: "2018 YAMAHA KODIAK 450  with power steering,custom wheels and full aluminium skid plate.first owner.....purchased new from dealer.riden by child(girl)only around 500 miles on it or 64 hours.great atv for child  or small person.runs good....no problem at all.i dont need it enymore...just colecting dust",
  price: 3800,
  stock: 6,
  maximum_speed: 85,
  fuel_type: "Petrol",
  category_id: atv_category_id,
  brand_id: yamaha_brand_id
)
kodiak_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737180487/471578317_10222889860709914_5239043369405524991_n_gxspaf.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737180487/471828919_10222889860509909_3466030489145446541_n_p02ser.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737180486/471634650_10222889860549910_4583313253980364107_n_aqsgav.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737180482/471540720_10222889860629912_1096735949485010317_n_jj1koo.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737180482/472070757_10222889860669913_451692599025823610_n_crpye6.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737180482/471590936_10222889860349905_4396250553148397180_n_al1tcs.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737180481/471987164_10222889860389906_8604758405501599051_n_pydi6m.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737180480/471696956_10222889860469908_1188144472699403075_n_e6awpo.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737180487/471916662_10222889860429907_8638352677796184687_n_q3ebx7.jpg"
]

kodiak_urls.each_with_index do |url, index|
  file = URI.open(url)
  kodiak.photos.attach(io: file, filename: "kodiak#{index + 1}.jpg", content_type: "image/jpg")
end

  alterra = Bike.create!(
  model: "Arctic Cat Alterra 700",
  kilometers: 0,
  body: "Recreational/Utility",
  colour: "Fire Red",
  engine_capacity: 695,
  last_modified: Date.new(2024),
  registration_status: "registered",
  description: "A high-powered ATV offering exceptional ground clearance and unmatched versatility for rugged terrains.",
  features: "Electronic Fuel Injection, Ride-In Suspension, 11-inch Ground Clearance, 2WD/4WD",
  price: 3600,
  stock: 3,
  maximum_speed: 100,
  fuel_type: "Petrol",
  category_id: atv_category_id,
  brand_id: ducati_brand_id
)

alterra_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737180852/473081273_9793935507287851_2773191812009129564_n_acn1mn.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737180846/473099758_9793935627287839_4825687513270411691_n_m8vfaa.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737180846/473423337_9793935483954520_197184482630769978_n_i6wgn4.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737180846/473149316_9793935597287842_7656459215338875662_n_kqws3h.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737180845/473367086_9793935547287847_8281429376576686865_n_us0ftg.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737180844/473326749_9793934567287945_7677059055547834803_n_vzzbcu.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737180844/473186451_9793934657287936_1348743460393817304_n_rzppxc.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737180843/473062263_9793935450621190_7687782198853495263_n_elgdwx.jpg"
]

alterra_urls.each_with_index do |url, index|
  file = URI.open(url)
  alterra.photos.attach(io: file, filename: "alterra#{index + 1}.jpg", content_type: "image/jpg")
end
puts "created artic bike"

brute_force = Bike.create!(
  model: "Kawasaki Brute Force 750 4x4i EPS",
  kilometers: 0,
  body: "Utility",
  colour: "Lemon Green",
  engine_capacity: 749,
  last_modified: Date.new(2024),
  registration_status: "registered",
  description: "A powerhouse utility ATV built for extreme workloads and trail adventures with premium handling.",
  features: "Variable Front Differential Lock, Electric Power Steering, Fully Automatic Transmission",
  price: 3100,
  stock: 4,
  maximum_speed: 110,
  fuel_type: "Petrol",
  category_id: atv_category_id,
  brand_id: kawasaki_brand_id
)

brute_force_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737181348/462602393_1062929935834392_6694583389485002307_n_oxt4kj.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737181342/462353462_1062929999167719_2041247063883289290_n_d8yiuo.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737181342/462373542_1062929982501054_8029304555673243951_n_gyzbqg.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737181342/462500744_1062929885834397_6944762055572501674_n_hrfsst.jpg"
]

brute_force_urls.each_with_index do |url, index|
  file = URI.open(url)
  brute_force.photos.attach(io: file, filename: "brute_force#{index + 1}.jpg", content_type: "image/jpg")
end

snarler = Bike.create!(
  model: "Segway Snarler AT6 L",
  kilometers: 0,
  body: "Recreational",
  colour: "Dynamic Black",
  engine_capacity: 570,
  last_modified: Date.new(2024),
  registration_status: "registered",
  description: "A revolutionary ATV with smart connectivity and advanced features for modern off-road enthusiasts.",
  features: "Say hello to the Segway Snarler AT6 L, the middle child in the Segway quad-bike family – perfectly balancing power and capability between the AT5 and AT10!
  🔥 570cc DOHC engine (44HP)
  🚀 0-60km/h in 4.2 seconds
  💡 Equipped with Electronic Power Steering (EPS) for effortless handling
  🛠️ 500kg towing capacity to tackle any job
  📱 Stay connected with Smart App Integration for real-time performance data and remote controls
  The AT6 L (L stands for 2-seater) is the ideal choice for those who want more power than the AT5 while keeping things manageable compared to the AT10. Whether for work or play, it’s built to impress!",
  price: 4200,
  stock: 5,
  maximum_speed: 95,
  fuel_type: "Petrol",
  category_id: atv_category_id,
  brand_id: segway_brand_id
)

snarler_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737181644/473987170_122123212574605426_3645268457873832390_n_ui5bez.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737181643/473743290_122123213072605426_4493070149423449796_n_ynzoaw.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737181641/473618502_122123212598605426_8035977657746708990_n_wi9u3c.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737181640/473737923_122123212748605426_6869560391429567939_n_h1vpvx.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737181639/473757484_122123212658605426_3611836845537740539_n_bfcfap.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737181638/473625826_122123212766605426_947480627323884777_n_ae7myy.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737181637/473821771_122123212562605426_6799331021847663180_n_tqexha.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737181634/473706785_122123212544605426_6500112365788577570_n_ttowa8.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737181634/473725441_122123212742605426_6275509358322194450_n_vz9z60.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737181633/473828320_122123212622605426_5734946102110511574_n_jcnfwo.jpg"
]

snarler_urls.each_with_index do |url, index|
  file = URI.open(url)
  snarler.photos.attach(io: file, filename: "snarler#{index + 1}.jpg", content_type: "image/jpg")
end

raptor = Bike.create!(
  model: "Yamaha Raptor 700R SE",
  kilometers: 0,
  body: "Sport",
  colour: "Lemon Green",
  engine_capacity: 686,
  last_modified: Date.new(2025),
  registration_status: "registered",
  description: "A top-tier sport ATV delivering unmatched acceleration and control for high-performance enthusiasts.",
  features: "Lightweight Frame, Dual Counterbalancers, Advanced Suspension System",
  price: 5000,
  stock: 2,
  maximum_speed: 130,
  fuel_type: "Petrol",
  category_id: atv_category_id,
  brand_id: yamaha_brand_id
)

raptor_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737181963/o_mexj2h.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737181962/a_neibjd.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737181961/z_tveluf.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737181959/f_gfoct6.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737181958/vb_jem4ip.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1737181967/473777272_9027006647413898_898238595201447740_n_tv2byr.jpg"
]

raptor_urls.each_with_index do |url, index|
  file = URI.open(url)
  raptor.photos.attach(io: file, filename: "raptor#{index + 1}.jpg", content_type: "image/jpg")
end
puts "created bikes in total are #{Bike.count} atvs"
