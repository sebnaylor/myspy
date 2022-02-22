# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "seeding..."
10.times do
  name = Faker::Hipster.word
  price = rand(100..1000)
  height = rand(120..220)
  years_of_service = rand(0..30)
  Agent.create(name: name, price: price, height: height, years_of_service: years_of_service)
  puts name
end
