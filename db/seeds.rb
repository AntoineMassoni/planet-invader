# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'creating users...'

5.times do
  fake_name = Faker::Movies::StarWars.character,
  fake_last_name = Faker::Movies::StarWars,
  fake_phone_number = Faker::PhoneNumber.phone_number_with_country_code,
  new_user = User.create(
    first_name: fake_name,
    last_name: fake_last_name,
    phone_number: fake_phone_number,
    email: "#{fake_name}@email.com"
    )
end

puts 'done!'
