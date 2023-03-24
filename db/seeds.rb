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

puts "Creating sample itineraries"

Itinerary.create!(
  name: "Athens Itinerary",
  start_date: Faker::Date.forward(days: 23),
  end_date: Faker::Date.forward(days: 23),
  description: ["luxury holidays", "amazing experience", "unforgetable weekend", "remarkable trip"].sample,
  user_id: 1,
  location: "Athens, Greece"
)

Itinerary.create!(
  name: "Moscow Itinerary",
  start_date: Faker::Date.forward(days: 23),
  end_date: Faker::Date.forward(days: 23),
  description: ["luxury holidays", "amazing experience", "unforgetable weekend", "remarkable trip"].sample,
  user_id: 2,
  location: "Moscow, Russia"
)
Itinerary.create!(
  name: "Monson Itinerary",
  start_date: Faker::Date.forward(days: 23),
  end_date: Faker::Date.forward(days: 23),
  description: ["luxury holidays", "amazing experience", "unforgetable weekend", "remarkable trip"].sample,
  user_id: 3,
  location: "Monson, Massachusetts, USA"
)
Itinerary.create!(
  name: "Lisboa Itinerary",
  start_date: Faker::Date.forward(days: 23),
  end_date: Faker::Date.forward(days: 23),
  description: ["luxury holidays", "amazing experience", "unforgetable weekend", "remarkable trip"].sample,
  user_id: 4,
  location: "Lisbon, Portugal"
)

puts "Sample itineraries created!"


# ------------------Activities------------------

puts "Creating sample activities"


20.times do
  Activity.create!(

    address: Faker::Address.street_name,
    category: ["museum", "shopping", "tour", "church", "local market"].sample,
    price: ["10", "20", "30", "45"].sample,
    duration: [30, 60, 90, 120].sample,
    location: ["Athens", "Moscow", "Monson", "Lisboa"].sample,
    Title: Faker::Kpop.i_groups,
    link: Faker::Marketing.buzzwords
  )
end


puts 'Sample activities created!'

# ------------------Itinerary_activity_joins------------------


puts "creating join instances"

id = 1
20.times do
  ItineraryActivityJoin.create!(
    itinerary_id: rand(1..4),
    activity_id: id
  )
  id += 1
end

puts "join instances created!"
