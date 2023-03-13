# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Cleaning  database...'
User.destroy_all

puts "creating new seeds"

  user1 = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "alex@gmail.com",
    password: 12341234
  )
  user2 = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "nate@gmail.com",
    password: 12341234
  )
  user3 = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "maria@gmail.com",
    password: 12341234
  )
  user4 = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: "luis@gmail.com",
    password: 12341234
  )


  itinerary1 = Itinerary.create!(
    name: Faker::Address.city,
    start_date: Faker::Date.forward(days: 23),
    end_date: Faker::Date.forward(days: 20),
    description: "Amazing holidays",
    user_id: 1
  )


  # 3.times do
  #   itinerary = Itinerary.new(
  #     name: Faker::Address.city,
  #     start_date: 1/10,
  #     end_date: 3/10,
  #     # description: ["luxary holidays", "amazing experience", "unforgetable weekend"].sample
  #   )
  #   itinerary.save!
  # end


puts 'Finished seeding users!'
