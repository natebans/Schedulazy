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

puts "creating new seeds"

  # ------------------Users------------------


  user1 = User.create!(
    first_name: "Alex",
    last_name: Faker::Name.last_name,
    email: "alex@gmail.com",
    password: 12341234
  )
  user2 = User.create!(
    first_name: "Nate",
    last_name: "Banas",
    email: "nate@gmail.com",
    password: 12341234
  )
  user3 = User.create!(
    first_name: "Maria",
    last_name: "Micioni",
    email: "maria@gmail.com",
    password: 12341234
  )
  user4 = User.create!(
    first_name: "Luis",
    last_name: "Fare e Oliveira Claro",
    email: "luis@gmail.com",
    password: 12341234
  )





# ------------------Itineraries------------------




  itinerary1 = Itinerary.create!(
    name: "Athens",
    start_date: Faker::Date.forward(days: 23),
    end_date: Faker::Date.forward(days: 23),
    description: ["luxury holidays", "amazing experience", "unforgetable weekend", "remarkable trip"].sample,
    user_id: 1
  )

  itinerary2 = Itinerary.create!(
    name: "Moscow",
    start_date: Faker::Date.forward(days: 23),
    end_date: Faker::Date.forward(days: 23),
    description: ["luxury holidays", "amazing experience", "unforgetable weekend", "remarkable trip"].sample,
    user_id: 2
  )
  itinerary3 = Itinerary.create!(
    name: "Monson, Massachusetts",
    start_date: Faker::Date.forward(days: 23),
    end_date: Faker::Date.forward(days: 23),
    description: ["luxury holidays", "amazing experience", "unforgetable weekend", "remarkable trip"].sample,
    user_id: 3
  )
  itinerary4 = Itinerary.create!(
    name: "Lisboa",
    start_date: Faker::Date.forward(days: 23),
    end_date: Faker::Date.forward(days: 23),
    description: ["luxury holidays", "amazing experience", "unforgetable weekend", "remarkable trip"].sample,
    user_id: 4
  )


# ------------------Activities------------------



  activity1 = Activity.create!(
    address: Faker::Address.street_name,
    categories: ["museums", "shopping", "restaurants", "churches", "bike tour"].sample,
    price: ["10", "20", "30", "45"].sample,
    duration: [30, 60, 90].sample,
    itinerary_id: [1, 2, 3, 4].sample
  )

  activity2 = Activity.create!(
    address: Faker::Address.street_name,
    categories: ["museums", "shopping","restaurants", "churches", "visit beaches"].sample,
    price: ["10", "20", "30", "45"].sample,
    duration: [30, 60, 90].sample,
    itinerary_id: [1, 2, 3, 4].sample
  )

  activity3 = Activity.create!(
    address: Faker::Address.street_name,
    categories: ["museums","shopping", "restaurants", "churches", "visit local pubs"].sample,
    price: ["10", "20", "30", "45"].sample,
    duration: [30, 60, 90].sample,
    itinerary_id: [1, 2, 3, 4].sample
  )

  activity4 = Activity.create!(
    address: Faker::Address.street_name,
    categories: ["museums", "shopping", "restaurants", "churches", "visit local markets"].sample,
    price: ["10", "20", "30", "45"].sample,
    duration: [30, 60, 90, 120].sample,
    itinerary_id: [1, 2, 3, 4].sample
  )



puts 'Finished seeding users!'
