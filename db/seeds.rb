# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Planet.destroy_all
User.destroy_all

require 'faker'


puts 'creating users and planets...'


new_user = User.create!(
  first_name: Faker::Movies::StarWars.character,
  last_name: Faker::Movies::StarWars,
  phone_number:Faker::PhoneNumber.phone_number_with_country_code,
  email: 'nodadasd@email.com',
  password: 'azerty'
  )

User.create!(
  first_name: Faker::Movies::StarWars.character,
  last_name: Faker::Movies::StarWars,
  phone_number:Faker::PhoneNumber.phone_number_with_country_code,
  email: 'nothing@email.com',
  password: 'azerty'
  )

User.create!(
  first_name: Faker::Movies::StarWars.character,
  last_name: Faker::Movies::StarWars,
  phone_number:Faker::PhoneNumber.phone_number_with_country_code,
  email: 'ndasdasdg@email.com',
  password: 'azerty'
  )

User.create!(
  first_name: Faker::Movies::StarWars.character,
  last_name: Faker::Movies::StarWars,
  phone_number:Faker::PhoneNumber.phone_number_with_country_code,
  email: 'nooidsdvhsfdoiv@email.com',
  password: 'azerty'
  )

User.create!(
  first_name: Faker::Movies::StarWars.character,
  last_name: Faker::Movies::StarWars,
  phone_number:Faker::PhoneNumber.phone_number_with_country_code,
  email: 'nooidsdadhgreretrtbasgsfdoiv@email.com',
  password: 'azerty'
  )


Planet.create!(
  name: 'Abafar',
  description: 'A desert planet located in the Outer Rim with a completely white surface. Known as The Void, the planet is barely populated but is home to massive amounts of rhydonium, a scarce and volatile fuel.',
  price: 99,
  capacity: 2,
  stellar_coordinates: Faker::TvShows::StarTrek.location,
  activities: 'go mining!',
  weather: 'hot!',
  local_population: Faker::Movies::StarWars.specie,
  user: new_user
)

Planet.create!(
  name: 'Agamar',
  description: '  Small mineral planet located in a remote section of the galaxy, its surface is covered with a layer of white salt over its red-colored soil. In Leia, Princess of Alderaan it is the location of an early Rebel Alliance outpost. Leia and her remaining Resistance forces flee there in The Last Jedi, where they face off with the First Order.',
  price: 56,
  capacity: 3,
  stellar_coordinates: Faker::TvShows::StarTrek.location,
  activities: 'pick up salt and dream',
  weather: Faker::Music.chord,
  local_population: Faker::Movies::StarWars.specie,
  user: new_user
)

Planet.create!(
  name: 'Alderaan',
  description: 'Forests, mountains; home planet of Princess Leia and the House of Organa. Destroyed by the first Death Star as punishment for involvement in the Rebel Alliance and also as a demonstration of power.',
  price: 50,
  capacity: 3,
  stellar_coordinates: Faker::TvShows::StarTrek.location,
  activities: 'nothing... because it does not exist',
  weather: 'cold',
  local_population: Faker::Movies::StarWars.specie,
  user: new_user
)
Planet.create!(
  name: 'Coruscant',
  description: 'Cosmopolitan urban world consisting of one planet-wide city. Governmental center of the Galactic Republic and later the Galactic Empire.',
  price: 850,
  capacity: 2,
  stellar_coordinates: Faker::TvShows::StarTrek.location,
  activities: 'vosit the senate and learn politics',
  weather: 'seasonal',
  local_population: Faker::Movies::StarWars.specie,
  user: new_user
)

Planet.create!(
  name: 'Dagobah',
  description: ' Swamp planet where Yoda lives, so a lot of learning you must.',
  price: 150,
  capacity: 4,
  stellar_coordinates: Faker::TvShows::StarTrek.location,
  activities: 'learn the ways of the Jedi',
  weather: Faker::Music.chord,
  local_population: Faker::Movies::StarWars.specie,
  user: new_user
)

Planet.create!(
  name: 'Endor',
  description: 'Forest moon that the second Death Star orbits. Inhabited by Ewoks. The location of the battle between the Rebel Alliance and the Empire leading to the destruction of the second Death Star.',
  price: 200,
  capacity: 2,
  stellar_coordinates: Faker::TvShows::StarTrek.location,
  activities: 'acrobranche',
  weather: 'tropical and humid',
  local_population: Faker::Movies::StarWars.specie,
  user: new_user
)

Planet.create!(
  name: 'Hoth',
  description: 'Desolate ice planet and base for the Rebel Alliance.',
  price: 30,
  capacity: 2,
  stellar_coordinates: Faker::TvShows::StarTrek.location,
  activities: 'create snowmen and have snow fights',
  weather: 'very cold!',
  local_population: Faker::Movies::StarWars.specie,
  user: new_user
)

Planet.create!(
  name: 'Jakku',
  description: 'Desert planet. Site of a "graveyard" of ships damaged during the Battle of Jakku, the final battle between the New Republic and the Galactic Empire.',
  price: 150,
  capacity: 3,
  stellar_coordinates: Faker::TvShows::StarTrek.location,
  activities: 'gather metal',
  weather: 'warm',
  local_population: Faker::Movies::StarWars.specie,
  user: new_user
)

Planet.create!(
  name: 'Kashyyyk',
  description: 'Forest planet and home of the Wookiees. Also the site of one of the final battles of the Clone Wars.',
  price: 80,
  capacity: 2,
  stellar_coordinates: Faker::TvShows::StarTrek.location,
  activities: 'dance with the locals',
  weather: 'warm during winter and cold in the summer',
  local_population: Faker::Movies::StarWars.specie,
  user: new_user
)

Planet.create!(
  name: 'Mandalore',
  description: 'Formerly habitable planet and the subject of legends due to its history of Mandalorian warriors.',
  price: 100,
  capacity: 2,
  stellar_coordinates: Faker::TvShows::StarTrek.location,
  activities: 'learn to steal',
  weather: 'cold!',
  local_population: Faker::Movies::StarWars.specie,
  user: new_user
)

Planet.create!(
  name: 'Tatooine',
  description: 'Desert planet and childhood home of Anakin Skywalker and Luke Skywalker.',
  price: 30,
  capacity: 5,
  stellar_coordinates: Faker::TvShows::StarTrek.location,
  activities: 'you can visit the house of Jabba',
  weather: 'hot during the day, cold in the night',
  local_population: Faker::Movies::StarWars.specie,
  user: new_user
)


puts 'done!'
