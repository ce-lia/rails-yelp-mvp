# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

restaurants_attributes = []

5.times do
  restaurant = { name: Faker::Restaurant.name,
                 phone_number: Faker::PhoneNumber.phone_number,
                 address: Faker::Address.full_address,
                 category: %w[chinese italian japanese french belgian].sample}
  restaurants_attributes << restaurant
end

Restaurant.create!(restaurants_attributes)
puts 'Finished!'
