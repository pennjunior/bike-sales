review1 = Review.create!(
  bike_id: royal_enfield_flying_flea.id,
  rating: 4.5,
  content: "The Royal Enfield Flying Flea is a fantastic choice for eco-conscious riders. Its smooth acceleration and quiet operation make it great for urban commuting, and the battery life is impressive. The bike maintains Royal Enfield's classic design, appealing to both new and longtime fans. While the range could be improved for longer rides, it’s perfect for everyday use and sustainable city travel.",
  reviewer_name: "James K."
)
review2 = Review.create!(
  bike_id: cforce_850_eps.id,
  rating: 4.7,
  content: "CFMOTO’s Cforce 850 EPS offers a great balance of power and control for both rugged terrain and farm work. The power steering makes it incredibly smooth, even on challenging trails. Its durable design and high engine capacity make it ideal for any heavy-duty tasks. A bit pricey, but worth it for serious riders or farmers who need a reliable machine.",
  reviewer_name: "Sarah P."
)
review3 = Review.create!(
  bike_id: honda_fourtrax_rancher.id,
  rating: 4.6,
  content: "The Honda FourTrax Rancher is a great all-around ATV. It’s versatile enough for both recreational riding and utility work, and Honda’s reliability is unmatched. The handling is precise, and it’s comfortable for long rides. Some might find the features basic, but it’s a solid choice for durability and value.",
  reviewer_name: "Tom W."
)
review4 = Review.create!(
  bike_id: heritage_classic_114.id,
  rating: 5.0,
  content: "The Harley-Davidson Heritage Classic 114 truly lives up to its name as a classic. The V-Twin engine provides outstanding power, and the bike's design is both timeless and stylish. It’s a perfect choice for long highway rides, delivering comfort and exceptional performance. A bit heavy, but ideal for seasoned riders who value quality and craftsmanship.",
  reviewer_name: "Linda S."
)
review5 = Review.create!(
  bike_id: yamaha_grizzly_700_eps.id,
  rating: 4.8,
  content: "Yamaha’s Grizzly 700 EPS is a powerhouse for anyone who loves outdoor adventures. It handles rough trails effortlessly and has a comfortable seat and handlebars. The electronic power steering (EPS) makes it easy to maneuver. Perfect for any off-road enthusiast who wants a durable, high-performance ATV.",
  reviewer_name: "Alex R."
)
review6 = Review.create!(
  bike_id: polaris_ranger_xp_1000.id,
  rating: 4.9,
  content: "The Polaris Ranger XP 1000 is built for extreme utility work and tough terrains. With plenty of cargo space and a strong engine, it’s great for farm tasks and heavy-duty jobs. The ride is surprisingly comfortable, even on bumpy trails. Highly recommended for anyone looking for a robust, multipurpose UTV.",
  reviewer_name: "Jessica M."
)
review7 = Review.create!(
  bike_id: ktm_390_adventure.id,
  rating: 4.7,
  content: "The KTM 390 Adventure is a versatile bike perfect for both city streets and light off-road paths. It’s lightweight, easy to handle, and has an impressive fuel economy. The advanced tech features are a bonus for the price point. Ideal for beginner adventure riders who want a high-quality, affordable bike.",
  reviewer_name: "Michael B."
)
review8 = Review.create!(
  bike_id: kawasaki_mule_pro_dxt.id,
  rating: 4.8,
  content: "The Kawasaki Mule Pro-DXT is perfect for those needing a powerful UTV for farming or commercial work. The diesel engine is a powerhouse and performs well even with heavy loads. It’s a reliable workhorse with plenty of space for tools and supplies. For serious users who need durability and efficiency, this is the one.",
  reviewer_name: "Chris L."
)
review9 = Review.create!(
  bike_id: vespa_gts_super_300.id,
  rating: 4.5,
  content: "The Vespa GTS Super 300 is a stylish and practical choice for urban commuters. It’s compact yet powerful enough for city driving, and the design is classic Vespa. The storage space under the seat is a plus for daily essentials. For those seeking a stylish scooter for the city, the GTS Super 300 is a fantastic pick.",
  reviewer_name: "Mia J."
)
review10 = Review.create!(
  bike_id: can_am_outlander_850_xt.id,
  rating: 4.9,
  content: "Can-Am’s Outlander 850 XT is a beast when it comes to power and performance. It handles rough terrain like a pro and has excellent traction. The suspension makes for a smooth ride, even on challenging trails. Perfect for serious off-roaders who want a durable and high-performing ATV. Worth every penny for the quality.",
  reviewer_name: "Derek T."
)
review11 = Review.find_or_create_by(
  bike_id: honda_fourtrax_foreman.id,
  rating: 4.8,
  content: "The Honda FourTrax Foreman Rubicon 4x4 is an impressive ATV built for tough work. Its automatic DCT transmission makes gear shifts smooth and reliable, even on rough terrain. It’s a bit heavy, but that adds to its stability and durability. Ideal for heavy-duty tasks or farm work, and it runs like a charm on uneven ground. Highly recommended for rugged utility needs.",
  reviewer_name: "Cameron N."
)
review12 = Review.find_or_create_by(
  bike_id: yamaha_yxz1000r.id,
  rating: 4.7,
  content: "The Yamaha YXZ1000R SS is a high-performance UTV that thrives on rough trails. The Sport Shift (SS) paddle shifters are unique and add a racing vibe to the ride. It’s an adrenaline-pumping experience, especially for trail riders who love speed and control. Could use a bit more cargo space, but for sport UTV fans, this model is hard to beat.",
  reviewer_name: "Rachel A."
)
review13 = Review.find_or_create_by(
  bike_id: suzuki_kingquad_750.id,
  rating: 4.6,
  content: "The Suzuki KingQuad 750AXi SE is a reliable choice for any ATV user. With its power steering and comfortable seat, it’s easy to handle for long periods. The 4WD system works smoothly, and the overall build is rugged. Ideal for users who need both power and comfort on rough trails or work sites. Great for mixed-use.",
  reviewer_name: "Patricia F."
)
review14 = Review.find_or_create_by(
  bike_id: polaris_sportsman_570.id,
  rating: 4.9,
  content: "The Polaris Sportsman 570 is a fantastic ATV that balances power and affordability. It’s perfect for beginners as well as experienced riders. The suspension is top-notch, making for a smooth ride even on rocky trails. The 570cc engine is powerful yet easy to handle, and it’s fuel-efficient too. Highly recommended for recreational and light utility use.",
  reviewer_name: "Martin B."
)
review15 = Review.find_or_create_by(
  bike_id: harley_softail_standard.id,
  rating: 5.0,
  content: "The Harley-Davidson Softail Standard is a true classic. It combines vintage looks with modern engineering, making for a smooth and stylish ride. The handling is superb, especially for a cruiser, and the engine is powerful without feeling overwhelming. Great for both new and experienced Harley fans, this bike delivers an iconic riding experience.",
  reviewer_name: "Oliver H."
)
review16 = Review.find_or_create_by(
  bike_id: can_am_defender_pro.id,
  rating: 4.8,
  content: "The Can-Am Defender Pro is a beast for utility work. With its large cargo bed and powerful engine, it’s perfect for farm work or heavy lifting. It’s comfortable for long hours, and the cabin is spacious enough for two. Definitely a workhorse for anyone needing a dependable UTV for serious tasks.",
  reviewer_name: "Jenna L."
)
review17 = Review.find_or_create_by(
  bike_id: vespa_primavera_150.id,
  rating: 4.6,
  content: "The Vespa Primavera 150 is an ideal scooter for city riders. Its compact design is easy to maneuver, and the 150cc engine is powerful enough for daily commutes. With a vintage look and modern features, it’s both stylish and practical. A great choice for anyone looking for convenience, reliability, and style in one package.",
  reviewer_name: "Natalie G."
)
review18 = Review.find_or_create_by(
  bike_id: ktm_790_adventure.id,
  rating: 4.9,
  content: "The KTM 790 Adventure is one of the best adventure bikes available. With a powerful engine and lightweight design, it’s built for off-road adventures. The adjustable suspension and advanced electronics make it highly adaptable. Ideal for riders who want the flexibility to explore different terrains without sacrificing comfort or performance.",
  reviewer_name: "Ben T."
)
review19 = Review.find_or_create_by(
  bike_id: cfmoto_zforce_1000.id,
  rating: 4.8,
  content: "CFMOTO’s ZForce 1000 Sport is a great UTV for thrill-seekers. It’s packed with power and handles rough trails with ease. The suspension is very responsive, making it comfortable on uneven terrain. Perfect for recreational riders who want a reliable and high-performance UTV for weekend adventures.",
  reviewer_name: "Kevin P."
)
review20 = Review.find_or_create_by(
  bike_id: kawasaki_teryx_krx.id,
  rating: 5.0,
  content: "The Kawasaki Teryx KRX 1000 is a high-performance UTV made for extreme trails. With its large wheels, strong chassis, and powerful engine, it’s designed to handle the toughest off-road conditions. Perfect for serious UTV enthusiasts who want durability, power, and thrill all in one package.",
  reviewer_name: "Sophia D."
)
