Article.destroy_all
puts "Destroyed all article"
article1 = Article.create!(
  title: "Royal Enfield Goes Electric with New 'Flying Flea' Sub-Brand",
  description: "In a bold move towards sustainability, Royal Enfield has announced an all-new electric motorcycle sub-brand named 'Flying Flea.' Known for their rugged and reliable motorcycles, Royal Enfield’s leap into the electric market comes as part of a broader effort to reduce carbon emissions while keeping up with evolving consumer demands. This electric line is expected to maintain the brand’s signature look and feel, appealing to both traditional motorcycle enthusiasts and the growing eco-conscious market. \n
  Set to launch next year, the Flying Flea will focus on lightweight, efficient designs. The model is projected to include powerful lithium-ion batteries and next-gen regenerative braking technology, ensuring both performance and extended range. This electric line reflects the increasing global trend towards electric motorcycles, making Royal Enfield the latest manufacturer to pivot towards eco-friendly innovation.\n
  As electric vehicles gain popularity worldwide, Royal Enfield’s electric models offer sustainable alternatives for commuting and adventure biking. These advancements reinforce Royal Enfield's standing as a leader in motorcycle manufacturing, appealing to both new and returning riders looking to reduce their carbon footprint while experiencing the legacy of Royal Enfield.",
  article_type: "News",
  date: Date.new(2024)
)
article1_urls = ["https://res.cloudinary.com/drxr1eiwp/image/upload/v1731740860/img_0448-scaled_gj32pv.jpg",
                "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731740859/royalenfield-flying-flea-left-rear-three-quarter5_l2fmmw.webp"
]
article1_urls.each_with_index do |url, index|
  file = URI.open(url)
  article1.photos.attach(io: file, filename: "article1#{index +1}.jpg", content_type: "image/jpg")
end


# "Royal Enfield electric motorcycle"
# "Flying Flea sub-brand"
# "eco-friendly motorcycle"
# "electric motorcycles 2024"
# "sustainable biking"
article2 = Article.create!(
  title: "The Essential Role of ATVs in Modern Farming",
  description: "All-terrain vehicles (ATVs) have become essential tools in the agriculture industry, offering unmatched versatility and efficiency for various farming tasks. From transporting supplies to remote areas to managing livestock, ATVs provide quick, reliable access across diverse terrain. Farmers increasingly rely on these vehicles for tasks that would otherwise require larger, more expensive machinery.\n
  Many ATV models feature powerful engines and high ground clearance, allowing farmers to navigate challenging landscapes with ease. The compact size of ATVs also makes them ideal for narrow paths and areas with restricted access, where larger farm equipment might struggle. Additionally, the low fuel consumption and maintenance requirements of ATVs make them a cost-effective solution.\n
  As demand for sustainable farming practices grows, ATVs play an essential role in minimizing soil compaction and reducing emissions compared to traditional heavy-duty machinery. For farmers looking to improve efficiency while reducing their environmental impact, ATVs offer an ideal blend of affordability, sustainability, and functionality. With numerous attachments available, ATVs can easily be adapted to different tasks, from plowing to seed spreading.",
  article_type: "Feature",
  date: Date.new(2024)
)
article2_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731741156/quad-bike-and-atv-training-at-beyond-driving-2_mrsacb.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731741156/A_farmer_using_one_atv_on_a_farm_fkfeco.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731740860/woman-on-a-quad-backing-down-a-ramp-768x512_illmli.jpg"
]
article2_urls.each_with_index do |url, index|
  file = URI.open(url)
  article2.photos.attach(io: file, filename: "article2#{index +1}.jpg", content_type: "image/jpg")
end
# SEO Keywords:

# "ATVs in farming"
# "all-terrain vehicles agriculture"
# "efficient farming tools"
# "ATVs for livestock management"
# "sustainable farming equipment"
article3 = Article.create!(
  title: "UTVs – A Game Changer for Utility and Farming Operations",
  description: "Utility Terrain Vehicles (UTVs) have become indispensable for farm and utility operations, offering robust performance, large cargo capacities, and improved safety features over standard ATVs. Known for their versatility, UTVs can be outfitted with a range of attachments that make them ideal for plowing, towing, and hauling heavy loads.\n
  UTVs provide comfort and safety with features like roll cages and side-by-side seating, making them suitable for longer rides across expansive properties. With durable tires and high ground clearance, UTVs can handle challenging terrain, from muddy fields to rocky trails, enabling operators to access areas that traditional vehicles can’t reach.\n
  Increasingly, UTVs are being recognized as eco-friendly options for farm operations, as their smaller engines produce fewer emissions than larger trucks or tractors. Whether for small-scale or commercial agriculture, UTVs help streamline daily operations, saving time and labor costs. Their growing popularity in agriculture is a testament to the adaptability and efficiency that UTVs bring to modern farming, proving to be an invaluable asset for both utility and agricultural work.",
  article_type: "Feature",
  date: Date.new(2024)
)
article3_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731740860/can-am-dale-brisby-defender-pro35_yyjm8l.avif",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731740860/orv-my21-rec-defender-limited-oxford-blue-lifestyle-kyle-kst-4684-rgb_lwzymh.avif"
]
article3_urls.each_with_index do |url, index|
  file = URI.open(url)
  article3.photos.attach(io: file, filename: "article3#{index +1}.jpg", content_type: "image/jpg")
end

# SEO Keywords:

# "UTVs for farming"
# "Utility Terrain Vehicles agriculture"
# "UTV attachments farming"
# "eco-friendly utility vehicles"
# "UTVs in agriculture"
article4 = Article.create!(
  title: "Electric ATVs – Redefining Off-Road Adventures with Sustainability",
  description: "Electric ATVs are quickly emerging as a popular choice for off-road enthusiasts and environmentally-conscious consumers alike. With new models featuring powerful lithium-ion batteries and zero emissions, electric ATVs deliver both performance and eco-friendly benefits. These advancements make electric ATVs ideal for recreational activities as well as agricultural and utility applications.\n
  Leading manufacturers have invested heavily in developing electric ATVs that match the power and durability of traditional gas-powered models. Features like regenerative braking, long battery life, and enhanced torque provide a smooth, responsive ride, whether on trails or rugged terrain. Electric ATVs also offer quieter operation, making them a great option for areas sensitive to noise pollution or wildlife.\n
  As battery technology continues to evolve, the range and charging efficiency of electric ATVs are expected to improve. This makes electric ATVs a viable option for farm and utility work, helping to minimize the carbon footprint without sacrificing utility. The shift towards electric off-road vehicles marks a significant step in creating a sustainable future in both recreation and agriculture.",
  article_type: "Tech",
  date: Date.new(2024)
)
article4_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731741853/1_JnF21CSkS_4T0BjI-tQ26A_scxf9u.webp",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731741853/Hfea5549d24ff4da4beebba2cedff2564q_eukhkx.avif"
]
article4_urls.each_with_index do |url, index|
  file = URI.open(url)
  article4.photos.attach(io: file, filename: "article4#{index +1}.jpg", content_type: "image/jpg")
end
# "electric ATVs"
# "sustainable off-road vehicles"
# "eco-friendly ATVs"
# "electric all-terrain vehicles"
# "green technology in off-road adventures"
article5 = Article.create!(
  title: "UTVs for Extreme Terrain – Ultimate Performance for Rugged Landscapes",
  description: "Designed to tackle the toughest terrains, UTVs (Utility Terrain Vehicles) have become essential for those working in challenging outdoor environments, from rocky mountainsides to dense forests. With high ground clearance, durable tires, and powerful engines, UTVs are engineered to perform in conditions where other vehicles might fail.\n
  Modern UTVs come with various customization options, including reinforced suspensions, skid plates, and enhanced safety features like roll cages and harnesses. These vehicles provide the stability and traction necessary for navigating rough and uneven landscapes, allowing operators to transport equipment, supplies, or personnel across distances that are often inaccessible by standard vehicles.\n
  As UTVs continue to evolve, manufacturers are introducing electric and hybrid models, reducing emissions while still offering powerful off-road capabilities. This makes UTVs ideal for remote areas where environmental preservation is a priority. The combination of adaptability, power, and sustainability cements UTVs as indispensable tools for extreme terrains.",
  article_type: "Feature",
  date: Date.new(2024)
)
article5_urls = [
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731742014/108eefce-4981-4e8a-8382-84facda9ec66_f54061.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731742014/054_t8atss.jpg",
  "https://res.cloudinary.com/drxr1eiwp/image/upload/v1731742013/2QAV2N3YNRBMVCMFCJINWDH2EM_xijnxd.avif"
]
article5_urls.each_with_index do |url, index|
  file = URI.open(url)
  article5.photos.attach(io: file, filename: "article5#{index +1}.jpg", content_type: "image/jpg")
end
# "UTVs for extreme terrain"
# "rugged UTVs"
# "high-performance utility vehicles"
# "off-road utility vehicles"
# "UTVs for rugged landscapes"

article8 = Article.create!(
  title: "Adventure Motorcycles – Built for the Open Road and Beyond",
  description: "Adventure motorcycles are growing in popularity among riders looking to explore diverse terrains, from smooth highways to rugged trails. Designed for versatility, adventure bikes offer the durability needed for off-road adventures while maintaining the comfort and handling required for long-distance road trips. These motorcycles are known for their high ground clearance, larger fuel tanks, and advanced suspension systems.\n
  Many adventure motorcycle models are equipped with powerful engines, allowing riders to tackle steep inclines, loose gravel, and other challenging conditions. With integrated GPS, advanced braking systems, and luggage storage options, these bikes provide an unparalleled level of convenience and safety for extended journeys. As the adventure bike segment expands, manufacturers are introducing new models with improved fuel efficiency, lightweight materials, and enhanced rider comfort.\n
  Whether for commuting or off-road exploration, adventure motorcycles are ideal for riders who crave the thrill of an all-terrain experience. This segment continues to gain popularity, blending elements of touring and off-road biking to meet the needs of today’s adventurous motorcyclists.",
  article_type: "Lifestyle",
  date: Date.new(2024)
)
article8_url = "https://res.cloudinary.com/drxr1eiwp/image/upload/v1734453964/Adventure-moto-Wordpress-6_mz32ea.jpg"
article8.photos.attach(io: URI.open(article8_url), filename: "article8.jpg", content_type: "image/jpg")
# "adventure motorcycles"
# "all-terrain motorcycles"
# "motorcycles for long-distance riding"
# "adventure bikes for off-road"
# "touring and adventure motorcycles"
article9 = Article.create!(
  title: "Compact Electric Scooters – Perfect Solution for Urban Commuting",
  description: "Compact electric scooters are transforming urban commuting by providing a convenient, eco-friendly transportation option for city dwellers. Designed for short-distance travel, these lightweight scooters allow riders to zip through traffic, easily park, and avoid the hassle of public transit. With rechargeable batteries and minimal maintenance requirements, electric scooters offer a practical and sustainable alternative to traditional vehicles.\n
  Most compact electric scooters are equipped with features like LED headlights, smartphone app integration, and anti-lock braking systems, making them safe and user-friendly for all ages. Many models are foldable, allowing for easy storage at home or work, and their small size makes them ideal for crowded urban streets. With increasing interest in sustainable transportation, compact electric scooters have become popular among commuters who value environmental responsibility, low operating costs, and the freedom to travel at their own pace.\n
  As cities continue to embrace green initiatives, compact electric scooters represent a growing trend towards environmentally conscious travel. They are an ideal choice for individuals looking to reduce their carbon footprint while navigating busy cityscapes with ease.",
  article_type: "Tech",
  date: Date.new(2024)
)
article9_url = "https://res.cloudinary.com/drxr1eiwp/image/upload/v1734453962/compact-foldable-electric-scooter-ecofriendly-urban-commuting_38013-75343_uyxl13.jpg"
article9.photos.attach(io: URI.open(article9_url), filename: "article9.jpg", content_type: "image/jpg")
# "compact electric scooters"
# "urban commuting scooters"
# "eco-friendly city transport"
# "electric scooters for city travel"
# "sustainable urban commuting"
# Article 1: Electric Motorbikes in Rural Communities
article10 = Article.create!(
  title: "Electric Motorbikes are Revolutionizing Rural Communities",
  description: "Electric motorbikes are making a significant impact in rural communities. Offering an affordable, eco-friendly, and reliable mode of transport, they enable residents to access essential services and employment opportunities more easily. Due to their low maintenance and running costs, these bikes are becoming a practical solution for daily commuting. Furthermore, their quiet engines and reduced emissions help promote environmental sustainability, contributing to cleaner air in rural areas. As battery technology improves, the range and durability of these electric bikes continue to grow, furthering their utility for rural users.",
  article_type: "Tech",
  date: Date.new(2024, 5, 10)
)
article10_url = "https://res.cloudinary.com/drxr1eiwp/image/upload/v1734453707/quilor_Ebikes_129_14787345-3df9-439c-be64-ce6f2fd7f059_p9nxwk.webp"
article10.photos.attach(io: URI.open(article10_url), filename: "article10.jpg", content_type: "image/jpg")

# Article 2: UTVs Boosting Efficiency in Agriculture
article11 = Article.create!(
  title: "Utility Terrain Vehicles (UTVs) Boost Efficiency in Agriculture",
  description: "UTVs, or Utility Terrain Vehicles, are becoming essential tools in agriculture. Farmers appreciate UTVs for their versatility, able to transport goods, supplies, and workers across large fields quickly. Many UTV models are designed to handle tough, uneven terrains and can be equipped with tools like plows and sprayers, making them perfect for diverse agricultural tasks. UTVs’ ability to navigate rough fields, especially in areas with challenging landscapes, boosts productivity, reduces labor time, and can even reduce soil compaction compared to larger vehicles.",
  article_type: "News",
  date: Date.new(2024, 3, 21)
)
article11_url = "https://res.cloudinary.com/drxr1eiwp/image/upload/v1734453708/can-am-dale-brisby-defender-pro18_fjyavj.jpg"
article11.photos.attach(io: URI.open(article11_url), filename: "article11.jpg", content_type: "image/jpg")
# Article 3: ATVs in Adventure Tourism
article12 = Article.create!(
  title: "All-Terrain Vehicles (ATVs) are Expanding Adventure Tourism",
  description: "ATVs, or All-Terrain Vehicles, are attracting thrill-seekers and adventure enthusiasts worldwide, contributing to the growth of adventure tourism. From mountainous trails to coastal dunes, ATVs offer a unique way to explore challenging landscapes. The demand for ATV rentals and guided tours is on the rise, as tourists look for adrenaline-pumping experiences that offer close encounters with nature. With safety features improving on modern ATVs, these vehicles are more accessible to a wider range of riders, boosting their popularity in adventure tourism.",
  article_type: "Industry",
  date: Date.new(2024, 6, 15)
)
article12_url = "https://res.cloudinary.com/drxr1eiwp/image/upload/v1734452947/146_o4el6v.jpg"
article12.photos.attach(io: URI.open(article12_url), filename: "article12.jpg", content_type: "image/jpg")

# Article 4: Eco-Friendly Scooters and Urban Mobility
article13 = Article.create!(
  title: "Eco-Friendly Scooters Enhance Urban Mobility and Reduce Emissions",
  description: "Eco-friendly electric scooters are transforming urban mobility, offering a compact and sustainable alternative to cars. Ideal for short trips within congested cities, these scooters are reducing traffic and carbon emissions. With features like foldable designs and swappable batteries, scooters are becoming convenient for everyday urban commuters. As cities invest more in infrastructure supporting micro-mobility, these electric scooters are becoming an integral part of sustainable city transport plans.",
  article_type: "Tech",
  date: Date.new(2024, 7, 5)
)
article13_url = "https://res.cloudinary.com/drxr1eiwp/image/upload/v1734452949/4VK5FUAQVREJFDGDNXLL6SMLQE_d29oiv.jpg"
article13.photos.attach(io: URI.open(article13_url), filename: "article13.jpg", content_type: "image/jpg")
# Article 5: The Rise of Adventure Motorbikes for Off-Road Exploration
article14 = Article.create!(
  title: "The Rise of Adventure Motorbikes for Off-Road Exploration",
  description: "Adventure motorbikes are gaining traction as a top choice for off-road explorers. With sturdy frames, enhanced suspension, and powerful engines, these bikes are designed to tackle rugged landscapes. Their ability to handle long-distance travel and difficult terrains makes them ideal for adventure-seekers who enjoy extended trips in remote areas. Adventure bikes provide a unique blend of power and endurance, making off-road exploration accessible and thrilling. Whether crossing mountain ranges or navigating forest trails, these bikes open up a new world for riders.",
  article_type: "Adventure",
  date: Date.new(2024, 4, 30)
)
article14_url = "https://res.cloudinary.com/drxr1eiwp/image/upload/v1734454168/2021-crf300l-gallery-04-2400xauto-1614832472_ytrjxf.jpg"
article14.photos.attach(io: URI.open(article14_url), filename: "article14.jpg", content_type: "image/jpg")
# Article 6: Trends in Smart Motorcycle Helmets
article15 = Article.create!(
  title: "Trends in Smart Motorcycle Helmets and Safety",
  description: "Smart motorcycle helmets equipped with cutting-edge features are setting new standards for rider safety. With built-in navigation systems, Bluetooth connectivity, and voice-activated controls, these helmets enhance the riding experience. Advanced safety technologies, such as impact sensors and emergency call capabilities, are making helmets smarter and more protective. As riders increasingly seek high-tech solutions, smart helmets are expected to become an essential accessory, enhancing both safety and convenience on the road.",
  article_type: "Innovation",
  date: Date.new(2024, 8, 12)
)
article15_url = "https://res.cloudinary.com/drxr1eiwp/image/upload/v1734454155/skully-hud-helmet_fkhuvr.webp"
article15.photos.attach(io: URI.open(article15_url), filename: "article15.jpg", content_type: "image/jpg")
# Article 7: Sustainable Manufacturing in the Motorbike Industry
article16 = Article.create!(
  title: "Sustainable Manufacturing Practices in the Motorbike Industry",
  description: "With environmental consciousness on the rise, the motorbike industry is adopting sustainable manufacturing practices. Companies are using eco-friendly materials, improving fuel efficiency, and exploring electric motorbike options. Some manufacturers are even incorporating recycled materials into production, reducing waste, and minimizing carbon emissions. As sustainability becomes a focus, riders can expect more environmentally friendly motorbike options, from fully electric models to fuel-efficient hybrids.",
  article_type: "Industry",
  date: Date.new(2024, 9, 1)
)

# Article 8: Benefits of Dual-Sport Motorcycles
article17 = Article.create!(
  title: "Benefits of Dual-Sport Motorcycles for On and Off-Road Adventures",
  description: "Dual-sport motorcycles, designed for both on-road and off-road use, are gaining popularity among riders who value versatility. These bikes offer the flexibility to handle city commutes while providing the ruggedness needed for trail riding. With features like durable tires, long-travel suspension, and lightweight frames, dual-sport motorcycles are ideal for riders who enjoy diverse terrain. Their adaptability makes them a cost-effective choice for those seeking both everyday transportation and weekend adventure.",
  article_type: "Adventure",
  date: Date.new(2024, 9, 20)
)

# Article 9: Electric Bikes in City Commutes
article18 = Article.create!(
  title: "Electric Bikes Transforming City Commutes for Urban Residents",
  description: "Electric bikes are providing an efficient, eco-friendly solution for urban commuting. As more cities create bike lanes and invest in infrastructure, e-bikes are becoming a popular alternative to cars. Riders appreciate the ability to bypass traffic and avoid parking hassles, all while contributing to reduced air pollution. Many e-bike models now offer advanced features like pedal assist and GPS, making them practical for daily use.",
  article_type: "Tech",
  date: Date.new(2024, 10, 1)
)

# Article 10: Latest Trends in Compact UTVs
article19 = Article.create!(
  title: "Compact UTVs Offer Convenience and Performance for Enthusiasts",
  description: "Compact Utility Terrain Vehicles (UTVs) are meeting the needs of hobbyists and small-scale farmers alike. Known for their versatility and easy maneuverability, compact UTVs handle tasks ranging from hauling equipment to weekend recreation. Compact UTVs are affordable, making them accessible for more users. With improved fuel efficiency and enhanced safety features, they offer a balance of power and practicality for users who need a reliable utility vehicle on a smaller scale.",
  article_type: "News",
  date: Date.new(2024, 11, 1)
)

puts "Number of Articles #{Article.count}"
