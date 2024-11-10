cruiser_category_id = Category.find_by(name: "Cruisers")&.id
atv_category_id = Category.find_by(name: "ATVs/Quad" )&.id
dirtbike_category_id = Category.find_by(name: "Dirt Bikes" )&.id
electric_category_id = Category.find_by(name: "Electric" )&.id
roadbike_category_id = Category.find_by(name: "Road Bikes" )&.id
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
  features: "• Key Aggressive bodywork...",
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
  engine_capacity: 250,
  registration_status: "registered",
  last_modified: Date.new(2018),
  description: "4-stroke, Air/Oil cooled, 8-valve, OHV, Milwaukee-8 117 V-Twin",
  features: "• Key Aggressive bodywork...",
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
  features: "• Key Aggressive bodywork...",
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
  features: "• Key Aggressive bodywork...",
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
  features: "• FOX 1.5 PODIUM shocks...",
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
  features: "• High-performance Ultramatic transmission...",
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
  features: "• Independent rear suspension for smooth ride...",
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
  features: "• Double wishbone front suspension...",
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
  features: "• 11.5-inch ground clearance, On-Demand AWD...",
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
  features: "• Rugged steel-tube frame, electric power steering...",
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
  features: "• Torsional Trailing arm Independent (TTI) rear suspension...",
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
  features: "• Durable steel frame, independent front suspension...",
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
  features: "• 14.5-inch ground clearance, FOX shocks...",
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
  features: "• High-clearance A-arms, 11.5 inches of ground clearance...",
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
  features: "• Passenger seat with hand grips, TTI rear suspension...",
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
  features: "WARN VRX 25 winch, Maxxis Zilla tires...",
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
  features: "• Sealed front and rear axles, electronic power steering...",
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
  features: "• Adjustable KYB shocks, multi-mode dynamic power steering...",
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
  features: "• Independent front suspension, 2WD/4WD with diff lock...",
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
  features: "• Electric shift, IRS suspension, TraxLok 2WD/4WD...",
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
  features: "• Sport-tuned suspension, high-clearance dual A-arms...",
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
  features: "• Digital LCD screen, large fuel tank, WARN winch...",
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
  features: "• FOX shocks, dynamic power steering, 25-inch tires...",
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
  features: "• Continuously variable transmission, front and rear racks...",
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
  features: "• Fuel injection, independent front suspension...",
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
