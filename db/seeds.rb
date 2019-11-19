# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

require 'faker'


puts 'creating users and planets...'

full_name = Faker::Movies::StarWars.character
first_user = User.create!(
  first_name: full_name.split(" ")[0],
  last_name: full_name.split(" ")[1],
  phone_number:Faker::PhoneNumber.phone_number_with_country_code,
  email: 'nodadasd@email.com',
  password: 'azerty'
  )

full_name = Faker::Movies::StarWars.character
second_user = User.create!(
  first_name: full_name.split(" ")[0],
  last_name: full_name.split(" ")[1],
  phone_number:Faker::PhoneNumber.phone_number_with_country_code,
  email: 'nothing@email.com',
  password: 'azerty'
  )

full_name = Faker::Movies::StarWars.character
third_user = User.create!(
  first_name: full_name.split(" ")[0],
  last_name: full_name.split(" ")[1],
  phone_number:Faker::PhoneNumber.phone_number_with_country_code,
  email: 'ndasdasdg@email.com',
  password: 'azerty'
  )

full_name = Faker::Movies::StarWars.character
fourth_user = User.create!(
  first_name: full_name.split(" ")[0],
  last_name: full_name.split(" ")[1],
  phone_number:Faker::PhoneNumber.phone_number_with_country_code,
  email: 'nooidsdvhsfdoiv@email.com',
  password: 'azerty'
  )

full_name = Faker::Movies::StarWars.character
fifth_user = User.create!(
  first_name: full_name.split(" ")[0],
  last_name: full_name.split(" ")[1],
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
  # remote_photo_url: 'https://vignette.wikia.nocookie.net/starwars/images/6/66/Abafar-ASDitV.png/revision/latest?',
  user: first_user
)

Planet.create!(
  name: 'Agamar',
  description: 'Small mineral planet located in a remote section of the galaxy, its surface is covered with a layer of white salt over its red-colored soil. In Leia, Princess of Alderaan it is the location of an early Rebel Alliance outpost. Leia and her remaining Resistance forces flee there in The Last Jedi, where they face off with the First Order.',
  price: 56,
  capacity: 3,
  stellar_coordinates: Faker::TvShows::StarTrek.location,
  activities: 'pick up salt and dream',
  weather: Faker::Music.chord,
  local_population: Faker::Movies::StarWars.specie,
  # remote_photo_url: 'https://i.pinimg.com/originals/94/1b/a0/941ba0698464c77179782cbeda53ad6f.jpg',
  user: first_user
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
  # remote_photo_url: 'https://lumiere-a.akamaihd.net/v1/images/1-alderaan-bio-1_copy_d2ef86c5.jpeg?',
  user: second_user
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
  # remote_photo_url: 'https://vignette.wikia.nocookie.net/starwars/images/1/16/Coruscant-EotE.jpg/revision/latest?',
  user: third_user
)

Planet.create!(
  name: 'Dagobah',
  description: 'Swamp planet where Yoda lives, so a lot of learning you must.',
  price: 150,
  capacity: 4,
  stellar_coordinates: Faker::TvShows::StarTrek.location,
  activities: 'learn the ways of the Jedi',
  weather: Faker::Music.chord,
  local_population: Faker::Movies::StarWars.specie,
  # remote_photo_url: 'https://lumiere-a.akamaihd.net/v1/images/dagobah-2-retina_92180bd1.jpeg?',
  user: third_user
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
  # remote_photo_url: 'https://vignette.wikia.nocookie.net/starwars/images/1/1d/Endor_BF2.png/revision/latest?',
  user: fourth_user
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
  # remote_photo_url: 'https://vignette.wikia.nocookie.net/starwars/images/8/81/Hoth_AoRCR.png/revision/latest?',
  user: fourth_user
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
  # remote_photo_url: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5087ce2d-012d-4a01-be04-27c944009d25/d9qehex-3f6c919e-be89-48b5-893d-4023d64d2f5f.png/v1/fill/w_1024,h_576,q_80,strp/jakku_planet_postprod_by_sambishop10_d9qehex-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9NTc2IiwicGF0aCI6IlwvZlwvNTA4N2NlMmQtMDEyZC00YTAxLWJlMDQtMjdjOTQ0MDA5ZDI1XC9kOXFlaGV4LTNmNmM5MTllLWJlODktNDhiNS04OTNkLTQwMjNkNjRkMmY1Zi5wbmciLCJ3aWR0aCI6Ijw9MTAyNCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.F0dSXwZP0TYeC1PC7PfPBA-9uusiLHijdacuLfYGcIU',
  user: fifth_user
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
  # remote_photo_url: 'https://vignette.wikia.nocookie.net/foceunleashed/images/0/01/Kashyyyk.jpg/revision/latest?',
  user: first_user
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
  # remote_photo_url: 'https://i.pinimg.com/originals/9c/9d/b2/9c9db27ec0e9850eb0f0590653e5ef93.png',
  user: third_user
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
  # remote_photo_url: 'https://i.ytimg.com/vi/a1AZHMg-J5Q/maxresdefault.jpg',
  user: fifth_user
)


puts 'done!'
