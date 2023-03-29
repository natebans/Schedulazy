# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning  database...'
User.destroy_all
Itinerary.destroy_all
Activity.destroy_all

# ------------------Users------------------

puts "creating users"

User.create!(
  first_name: "Alex",
  last_name: Faker::Name.last_name,
  email: "alex@gmail.com",
  password: 12341234
)
User.create!(
  first_name: "Nate",
  last_name: Faker::Name.last_name,
  email: "nate@gmail.com",
  password: 12341234
)
User.create!(
  first_name: "Maria",
  last_name: Faker::Name.last_name,
  email: "maria@gmail.com",
  password: 12341234
)
User.create!(
  first_name: "Luis",
  last_name: Faker::Name.last_name,
  email: "luis@gmail.com",
  password: 12341234
)

puts "Users created!"

# ------------------Itineraries------------------

# puts "Creating sample itineraries"

# Itinerary.create!(
#   name: "Brussels",
#   start_date: Faker::Date.forward(days: 23),
#   end_date: Faker::Date.forward(days: 23),
#   description: "Belgium’s capital mixes craft beer, bespoke chocolate, and waffles with a melting pot of European culture.",
#   user_id: 1,
#   location: "Brussels, Belgium"
# )

# Itinerary.create!(
#   name: "Bordeaux",
#   start_date: Faker::Date.forward(days: 23),
#   end_date: Faker::Date.forward(days: 23),
#   description: "Come for the wine, stay for the cosmopolitan feel, historical buildings, lively riverfront, and local cuisine.",
#   user_id: 2,
#   location: "Bordeaux, France"
# )
# Itinerary.create!(
#   name: "Lisbon",
#   start_date: Faker::Date.forward(days: 23),
#   end_date: Faker::Date.forward(days: 23),
#   description: "One of Europe’s oldest cities filled with beautiful tiles, historic buildings, and lively culture.",
#   user_id: 3,
#   location: "Lisbon, Portugal"
# )
# Itinerary.create!(
#   name: "Geneva",
#   start_date: Faker::Date.forward(days: 23),
#   end_date: Faker::Date.forward(days: 23),
#   description: "Explore this cosmopolitan lakeside city home to a host of international organizations and mountain views.",
#   user_id: 4,
#   location: "Geneva, Switzerland"
# )

# puts "Sample itineraries created!"


# ------------------Activities------------------

puts "Creating sample activities"

# locations: Brussels, Bordeaux, Lisbon, Geneva
# categories: Day Trip, Entry Ticket, Guided Tour, Hop-on hop-off tour, Water Activity, Workshop or Class

# Brussels activities

Activity.create!(
  Title: "Brussels Atomium Entry Ticket with Free Design Museum Ticket",
  address: "Pl. de l'Atomium 1, 1020 Brussels",
  category: "Entry Ticket",
  price: 16,
  duration: 3,
  location: "Brussels, Belgium",
  link: "https://www.getyourguide.com/brussels-l8/brussels-combined-atomium-and-design-museum-ticket-t71219/",
  photo: "https://cdn.getyourguide.com/img/tour/487a23ed73341f71.jpeg/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/3314d9cd220367ee.jpeg/99.jpg"
)

Activity.create!(
  Title: "From Brussels: Ghent and Bruges Day Tour",
  address: "Rue du Marché Aux Herbes 61, 1000 Brussels",
  category: "Day Trip",
  price: 48,
  duration: 10.5,
  location: "Brussels, Belgium",
  link: "https://www.getyourguide.com/brussels-l8/from-brussels-ghent-and-bruges-day-tour-t14525/",
  photo: "https://cdn.getyourguide.com/img/tour/2daffd63ef5ded1a.jpeg/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/3314d9cd220367ee.jpeg/99.jpg"
)

Activity.create!(
  Title: "Belgian Chocolate Workshop",
  address: "Rue de Namur 6, 1000 Brussels",
  category: "Workshop or Class",
  price: 45,
  duration: 1.5,
  location: "Brussels, Belgium",
  link: "https://www.getyourguide.com/brussels-l8/brussels-1-hour-belgian-chocolate-workshop-t310378/",
  photo: "https://cdn.getyourguide.com/img/tour/60ce14f9847f6.jpeg/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/3314d9cd220367ee.jpeg/99.jpg"
)

Activity.create!(
  Title: "Guided Walking Tour",
  address: "Grand-Place de Bruxelles, 1000 Brussels",
  category: "Guided Tour",
  price: 20,
  duration: 2.5,
  location: "Brussels, Belgium",
  link: "https://www.getyourguide.com/brussels-l8/brussels-guided-walking-tour-t204439/",
  photo: "https://cdn.getyourguide.com/img/tour/5c33667f237dd.jpeg/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/3314d9cd220367ee.jpeg/99.jpg"
)

Activity.create!(
  Title: "Hop-On Hop-Off Bus Tour",
  address: "54 Boulevard de l'Impératrice, 1000 Brussels",
  category: "Hop-on hop-off tour",
  price: 27.90,
  duration: 1,
  location: "Brussels, Belgium",
  link: "https://www.getyourguide.com/brussels-l8/brussels-hop-on-hop-off-bus-tour-t409338/",
  photo: "https://cdn.getyourguide.com/img/tour/61b335786e2ab.jpeg/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/3314d9cd220367ee.jpeg/99.jpg"
)

Activity.create!(
  Title: "Belgian Beer Tasting Experience",
  address: "Rue Montagne aux Herbes Potagères 2, 1000 Brussels",
  category: "Guided Tour",
  price: 35,
  duration: 2.5,
  location: "Brussels, Belgium",
  link: "https://www.getyourguide.com/brussels-l8/belgian-beer-tasting-experience-t46955/",
  photo: "https://cdn.getyourguide.com/img/tour/5cff8cbdac9f5.jpeg/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/3314d9cd220367ee.jpeg/99.jpg"
)

Activity.create!(
  Title: "Chocolate Museum Visit with Workshop",
  address: "Rue de l'Etuve 41, 1000 Brussels",
  category: "Entry Ticket",
  price: 35,
  duration: 2.5,
  location: "Brussels, Belgium",
  link: "https://www.getyourguide.com/choco-story-brussels-l87532/brussels-25-hour-chocolate-museum-visit-with-workshop-t316807/",
  photo: "https://cdn.getyourguide.com/img/tour/63d12a06883d2.jpeg/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/3314d9cd220367ee.jpeg/99.jpg"
)

Activity.create!(
  Title: "Waffle Making Workshop",
  address: "Rue des Foulons 30, 1000 Brussels",
  category: "Workshop or Class",
  price: 32,
  duration: 1.5,
  location: "Brussels, Belgium",
  link: "https://www.getyourguide.com/brussels-l8/15-hour-waffle-workshop-in-brussels-t53932/",
  photo: "https://cdn.getyourguide.com/img/tour/5565db5b7e0e0.jpeg/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/3314d9cd220367ee.jpeg/99.jpg"
)

# Bordeaux activities

Activity.create!(
  Title: "Saint-Emilion and Medoc Full-Day Wine Experience",
  address: "2ter Rue Mably, 33000 Bordeaux, France",
  category: "Guided Tour",
  price: 99,
  duration: 5.5,
  location: "Bordeaux, France",
  description: "Visit the prestigious wine region of Saint-Emilion on a tour of the village and right bank of the Dordogne River. Discover the wine-making traditions of 2 châteaux, including a family-run wine estate.",
  link: "https://www.getyourguide.com/bordeaux-l287/bordeaux-saint-emilion-and-medoc-full-day-wine-experience-t220344/",
  photo: "https://cdn.getyourguide.com/img/tour/b42828cb5674bce1.jpeg/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/54b5521abf36b.jpeg/99.jpg"
)

Activity.create!(
  Title: "River Garonne Cruise with Glass of Wine",
  address: "Ponton d'honneur passerelle gironde face au, 7 Quai de la Douane, 33000 Bordeaux, France",
  category: "Water Activity",
  price: 19,
  duration: 1.5,
  location: "Bordeaux, France",
  description: "Admire the beautiful city of Bordeaux with a sightseeing cruise on the Garonne River and soak up the sights, such as the Bordeaux Cathedral. Hear live commentary as you enjoy a glass of wine and cake.",
  link: "https://www.getyourguide.com/bordeaux-l287/bordeaux-cruise-along-the-garonne-with-a-glass-of-wine-t394780/",
  photo: "https://cdn.getyourguide.com/img/tour/5fd23c0b400c8.jpeg/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/54b5521abf36b.jpeg/99.jpg"
)

Activity.create!(
  Title: "Guided Bicycle Tour",
  address: "16 Rue du Jardin public, 33000 Bordeaux, France",
  category: "Guided Tour",
  price: 27.20,
  duration: 3,
  location: "Bordeaux, France",
  description: "Discover Bordeaux's history and culture and visit its most charming neighborhoods on a guided bike tour. Hop on your bike and embark on an artistic, architectural, and gastronomic adventure.",
  link: "https://www.getyourguide.com/bordeaux-l287/bordeaux-burdigala-through-time-bicyle-tour-t259382/",
  photo: "https://cdn.getyourguide.com/img/tour/63ae02573d6b0.jpeg/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/54b5521abf36b.jpeg/99.jpg"
)

Activity.create!(
  Title: "La Cité du Vin Skip-the-Line Entrance Ticket & Wine Tasting",
  address: "134 Quai de Bacalan, 33300 Bordeaux, France",
  category: "Entry Ticket",
  price: 22,
  duration: 3.5,
  location: "Bordeaux, France",
  description: "Discover La Cité du Vin, a unique cultural venue in Bordeaux dedicated to wine as a cultural, universal, and living heritage. Enjoy a glass of wine and 18 exhibits throughout the experience.",
  link: "https://www.getyourguide.com/bordeaux-l287/bordeaux-la-cite-du-vin-permanent-tour-wine-tasting-t142686/",
  photo: "https://cdn.getyourguide.com/img/tour/c5f15eb1d70b9ac2.jpeg/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/54b5521abf36b.jpeg/99.jpg"
)

Activity.create!(
  Title: "Guided Grand Cru Classé Winery Tour & Tasting",
  address: "Château Tour Baladoz, 33330 Saint-Laurent-des-Combes, France",
  category: "Workshop or Class",
  price: 16,
  duration: 1,
  location: "Bordeaux, France",
  description: "Discover 2 wine estates, 1 traditional and 1 modern in the Saint Emilion Grand Cru appellation. Learn about the winemaking process from vine to bottle and enjoy a tasting of exquisite wines from the Bordeaux region.",
  link: "https://www.getyourguide.com/saint-emilion-l44102/saint-emilion-guided-tour-wine-tasting-t212637/",
  photo: "https://cdn.getyourguide.com/img/tour/5c59b1e6c3cd6.jpeg/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/54b5521abf36b.jpeg/99.jpg"
)

Activity.create!(
  Title: "Brunch & Cruise Aboard the Yacht 'Le Luna'",
  address: "Ponton d'honneur passerelle gironde face au, 7 Quai de la Douane, 33000 Bordeaux, France",
  category: "Water Activity",
  price: 55,
  duration: 2,
  location: "Bordeaux, France",
  description: "Enjoy a homemade brunch while surrounded by scenic views on a yacht cruise in Bordeaux.",
  link: "https://www.getyourguide.com/bordeaux-l287/bordeaux-brunch-cruise-aboard-the-yacht-le-luna--t401414/",
  photo: "https://cdn.getyourguide.com/img/tour/60d304ecb7975.jpeg/99.jpg",
  banner: "https://cdn.getyourguide.com/img/location/54b5521abf36b.jpeg/99.jpg"
)

Activity.create!(
  Title: "Introduction to Bordeaux Wines Tasting Workshop",
  address: "2ter Rue Mably, 33000 Bordeaux, France",
  category: "Workshop or Class",
  price: 29,
  duration: 1,
  location: "Bordeaux, France",
  description: "Experience an unique wine tasting workshop in heart of downtown Bordeaux. Uncover the skills to taste wine like an expert and put those skills to use as you taste wine paired with local specialties.",
  link: "https://www.getyourguide.com/bordeaux-l287/bordeaux-introduction-to-bordeaux-wines-tasting-workshop-t410573/",
  photo: "https://cdn.getyourguide.com/img/tour/62135a9e687c3.jpeg/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/54b5521abf36b.jpeg/99.jpg"
)

Activity.create!(
  Title: "Full-Day Medoc Wine Tour",
  address: "12 Cours du 30 Juillet, 33000 Bordeaux",
  category: "Day Trip",
  price: 150,
  duration: 8,
  location: "Bordeaux, France",
  description: "Explore the wine growing region of Medoc on a full-day tasting tour, and sample the best red wines in the area. Home to over 1,500 vineyards, follow Medoc's famous Chateau Road and learn all about different wine tasting techniques along the way.",
  link: "https://www.getyourguide.com/bordeaux-l287/medoc-full-day-bordeaux-wine-tour-t3319/",
  photo: "https://cdn.getyourguide.com/img/tour/53d3f61dea4fb75e.jpeg/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/54b5521abf36b.jpeg/99.jpg"
)
0
# Lisbon activities

Activity.create!(
  Title: "Pena Palace, Sintra, Cabo da Roca, & Cascais Daytrip",
  address: "Campo dos Mártires da Pátria 122, 1150-343 Lisbon, Portugal",
  category: "Day Trip",
  price: 350,
  duration: 8,
  location: "Lisbon, Portugal",
  description: "Discover Sintra’s beauty and history, its romantic Pena Palace, and the stunning coastlines of Cabo da Roca and Cascais on a full-day trip from Lisbon.",
  link: "https://www.getyourguide.com/lisbon-l42/lisbon-pena-palace-sintra-cabo-da-roca-cascais-daytrip-t387617/",
  photo: "https://cdn.getyourguide.com/img/tour/3022f6faa1fcdf58.jpeg/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/73ce15a2e6cb68bb.jpeg/99.jpg"
)

Activity.create!(
  Title: "Boat Cruise with Live Fado Performance and a Drink",
  address: "Cais do Sodré 4, 1200-161 Lisbon, Portugal",
  category: "Water Activity",
  price: 40,
  duration: 1,
  location: "Lisbon, Portugal",
  description: "Enjoy a live Fado show while gazing at the best views of Lisbon on a boat tour. Sail past the riverfront areas of Cais do Sodré, Terreiro do Paço, Alfama and Cacilhas.",
  link: "https://www.getyourguide.com/lisbon-l42/lisbon-live-fado-boat-cruise-t451407/",
  photo: "https://cdn.getyourguide.com/img/tour/641caf2e0f1ba.jpeg/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/73ce15a2e6cb68bb.jpeg/99.jpg"
)

Activity.create!(
  Title: "Sunset Tour with Music and a Drink",
  address: "Cais da Ribeira das Naus, 1200-450 Lisbon, Portugal",
  category: "Water Activity",
  price: 40,
  duration: 1.5,
  location: "Lisbon, Portugal",
  description: "Embark on a catamaran experience past the most emblematic points of the Tagus River. The boat is well-equipped with everything you need for a fun evening, including a bar, music, and a dance floor.",
  link: "https://www.getyourguide.com/lisbon-l42/lisbon-sunset-tour-with-music-and-a-drink-t433303/",
  photo: "https://cdn.getyourguide.com/img/tour/6376323eabb31.png/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/73ce15a2e6cb68bb.jpeg/99.jpg"
)

Activity.create!(
  Title: "History, Stories and Lifestyle Walking Tour",
  address: "R. Garrett 122, 1200-273 Lisbon, Portugal",
  category: "Guided Tour",
  price: 25,
  duration: 3,
  location: "Lisbon, Portugal",
  description: "Learn about Lisbon’s history as you explore its charming neighborhoods on a guided walking tour. Discover Chiado and Bairro Alto, admire the views from Miradouro São Pedro de Alcântara, and more.",
  link: "https://www.getyourguide.com/lisbon-l42/lisbon-essential-tour-history-stories-lifestyle-t46394/",
  photo: "https://cdn.getyourguide.com/img/tour/8a6a602d19638d61.jpeg/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/73ce15a2e6cb68bb.jpeg/99.jpg"
)

Activity.create!(
  Title: "Food and Wine Walking Tour",
  address: "1100-200 Lisbon, Portugal",
  category: "Guided Tour",
  price: 58,
  duration: 3,
  location: "Lisbon, Portugal",
  description: "Savor the flavors of Portuguese food on a 3-hour tour of Lisbon's traditional eateries. In the company of a culinary guide, get tips on wine, petiscos, food, and fado on a shared or private tour.",
  link: "https://www.getyourguide.com/lisbon-l42/lisbon-food-wine-tasting-walk-t603/",
  photo: "https://cdn.getyourguide.com/img/tour/3d99e35c9d8e672f.jpeg/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/73ce15a2e6cb68bb.jpeg/99.jpg"
)

Activity.create!(
  Title: "Hop-On Hop-Off Bus Tour",
  address: "1100-241 Lisbon, Portugal",
  category: "Hop-on hop-off tour",
  price: 21,
  duration: 1,
  location: "Lisbon, Portugal",
  description: "Discover Lisbon at your own pace! With a 24h or 48-hour ticket to 1or 2 hop-on and hop-off bus tours. Marvel at the Manueline architecture of the city center, and see the sights of the Tagus River.",
  link: "https://www.getyourguide.com/lisbon-l42/lisbon-2-in-1-hop-on-hop-off-bus-tours-t59871/",
  photo: "https://cdn.getyourguide.com/img/tour/5eda715fa781f.png/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/73ce15a2e6cb68bb.jpeg/99.jpg"
)

Activity.create!(
  Title: "Tagus River Cruise with Traditional Muscatel Wine",
  address: "Sueste, Estação Fluvial Sul e, Av. Infante Dom Henrique 1B, 1100-016 Lisbon, Portugal",
  category: "Water Activity",
  price: 17,
  duration: 1.5,
  location: "Lisbon, Portugal",
  description: "Admire unique views of Lisbon from the Tagus river on this cruise. View sights from the Alfama district to the Tower of Belém while sipping on a glass of Muscatel wine from Setúbal.",
  link: "https://www.getyourguide.com/lisbon-l42/lisbon-tagus-river-cruise-with-traditional-muscatel-wine-t410732/",
  photo: "https://cdn.getyourguide.com/img/tour/62ece340f1e31.jpeg/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/73ce15a2e6cb68bb.jpeg/99.jpg"
)

Activity.create!(
  Title: "Hills Tour by Electric Bike",
  address: "R. dos Douradores 21, 1100-203 Lisbon, Portugal",
  category: "Guided Tour",
  price: 34,
  duration: 2.5,
  location: "Lisbon, Portugal",
  description: "Discover the secret sights of Lisbon on a 2.5-hour electric bike tour of the Alfama, Mouraria and Graça. Cruise some of the “7 Hills of Lisbon” with minimum effort and experience the city in a more authentic, eco-friendly way.",
  link: "https://www.getyourguide.com/lisbon-l42/lisbon-seven-hills-15-hour-electric-bike-tour-t52218/",
  photo: "https://cdn.getyourguide.com/img/tour/56057ca1728bb.jpeg/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/73ce15a2e6cb68bb.jpeg/99.jpg"
)

# locations: Brussels, Bordeaux, Lisbon, Geneva
# categories: Day Trip, Entry Ticket, Guided Tour, Hop-on hop-off tour, Water Activity, Workshop or Class

# Geneva activities

Activity.create!(
  Title: "Lake Geneva Cruise",
  address: "Quai du Mont-Blanc 2, 1201 Geneva, Switzerland",
  category: "Water Activity",
  price: 18.04,
  duration: 1,
  location: "Geneva, Switzerland",
  description: "Discover the beauty of Lake Geneva’s shores on a fascinating sightseeing cruise. Take in glorious views of the Swiss Alps from the water and learn about local landmarks with the help of an audioguide.",
  link: "https://www.getyourguide.com/geneva-l54/geneva-1-hour-lake-geneva-cruise-t292285/",
  photo: "https://cdn.getyourguide.com/img/tour/5d5dba3b42619.jpeg/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/5335945056974.jpeg/99.jpg"
)

Activity.create!(
  Title: "Guided Day Trip to Chamonix and Mont-Blanc",
  address: "Rue François-Bonivard 8, 1201 Geneva, Switzerland",
  category: "Day Trip",
  price: 105.26,
  duration: 9,
  location: "Geneva, Switzerland",
  description: "Take a day tour from Geneva to visit the mountain resort of Chamonix, at the foot of Mont Blanc. See the highest mountain peak in Europe and ride the cable car to Aiguille du Midi for panoramic views.",
  link: "https://www.getyourguide.com/geneva-l54/chamonix-mont-blanc-day-tour-from-geneva-t8223/",
  photo: "https://cdn.getyourguide.com/img/tour/5c4e2808192a3.jpeg/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/5335945056974.jpeg/99.jpg"
)

Activity.create!(
  Title: "Chocolate Flavors Walking Tour of Geneva",
  address: "Quai des Bergues 23, 1201 Geneva, Switzerland",
  category: "Guided Tour",
  price: 99.24,
  duration: 3,
  location: "Geneva, Switzerland",
  description: "Taste. Indulge. Explore. Experience Geneva’s chocolate and culture in a deliciously sweet three-hour walking tour. Join this delicious guided chocolate tour of Geneva to experience one-of-a-kind, award-winning chocolate creations.",
  link: "https://www.getyourguide.com/geneva-l54/chocolate-flavors-walking-tour-of-geneva-t122601/",
  photo: "https://cdn.getyourguide.com/img/tour/5ab2707269eb0.png/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/5335945056974.jpeg/99.jpg"
)

Activity.create!(
  Title: "Day Trip to Chamonix with Cable Car and Train",
  address: "8 rue François Bonivard 101 Geneva, Switzerland",
  category: "Day Trip",
  price: 196.48,
  duration: 10,
  location: "Geneva, Switzerland",
  description: "Discover Chamonix Village, a typical alpine village at the foot of the Mont Blanc! Enjoy a ride by cable car to the summit and in the afternoon board a mountain train to the Ice Sea.",
  link: "https://www.getyourguide.com/geneva-l54/chamonix-full-day-cable-car-and-train-tour-from-geneva-t53701/",
  photo: "https://cdn.getyourguide.com/img/tour/5f9558bdee8fb.jpeg/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/5335945056974.jpeg/99.jpg"
)

Activity.create!(
  Title: "Scenic Lake Cruise with Snacks and Wine",
  address: "Quai Gustave-Ador 35-33, 1207 Geneva, Switzerland",
  category: "Water Activity",
  price: 28.07,
  duration: 1,
  location: "Geneva, Switzerland",
  description: "Relax into beautiful Swiss landscapes with a zero-emissions cruise on Lake Geneva. Enjoy a glass of wine and some snacks as you cruise out from Geneva and admire picturesque views of the mountains.",
  link: "https://www.getyourguide.com/geneva-l54/geneva-scenic-lake-cruise-with-snacks-and-wine-t424767/",
  photo: "https://cdn.getyourguide.com/img/tour/62bda4b580b25.jpeg/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/5335945056974.jpeg/99.jpg"
)

Activity.create!(
  Title: "Tour of International Quarters and Old Town",
  address: "Pl. Dorcière 5, 1201 Geneva, Switzerland",
  category: "Guided Tour",
  price: 58.14,
  duration: 2,
  location: "Geneva, Switzerland",
  description: "Explore the old town and international districts of Geneva on a 2-hour sightseeing tour. See the top attractions like Jet d’Eau in Lake Geneva, St. Pierre’s Cathedral, and the Flower Clock.",
  link: "https://www.getyourguide.com/geneva-l54/geneva-city-tour-t4825/",
  photo: "https://cdn.getyourguide.com/img/tour/d8a4265d01ea77fb.jpeg/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/5335945056974.jpeg/99.jpg"
)

Activity.create!(
  Title: "Open-Top Sightseeing Bus Tour",
  address: "Pl. Dorcière 5, 1201 Geneva, Switzerland",
  category: "Guided Tour",
  price: 25.06,
  duration: 1.25,
  location: "Geneva, Switzerland",
  description: "Explore Geneva from a different perspective with an open-top bus tour around the city. Drive past the United Nations Office for photo opportunities and enjoy views of the beautiful Lake Geneva.",
  link: "https://www.getyourguide.com/geneva-l54/geneva-open-top-sightseeing-bus-tour-t428107/",
  photo: "https://cdn.getyourguide.com/img/tour/62f11398185b9.jpeg/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/5335945056974.jpeg/99.jpg"
)

Activity.create!(
  Title: "Hop-on Hop-off Sightseeing Tour",
  address: "Pl. Dorcière 5, 1201 Geneva, Switzerland",
  category: "Hop-on hop-off tour",
  price: 32.08,
  duration: 1,
  location: "Geneva, Switzerland",
  description: "Discover Geneva via open buses, trolleys and mini trains. You can visit the International District, the Old Town and the beautiful lakeside with this versatile 24-hour transport ticket.",
  link: "https://www.getyourguide.com/geneva-l54/geneva-hop-on-hop-off-open-bus-tour-t195911/",
  photo: "https://cdn.getyourguide.com/img/tour/5bfbea2f04a15.jpeg/98.jpg",
  banner: "https://cdn.getyourguide.com/img/location/5335945056974.jpeg/99.jpg"
)

puts 'Activities created!'

# ------------------Itinerary_activity_joins------------------


# puts "creating join instances"

# id = 1
# 20.times do
#   ItineraryActivityJoin.create!(
#     itinerary_id: rand(1..4),
#     activity_id: id
#   )
#   id += 1
# end

# puts "join instances created!"
