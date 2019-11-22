# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Planet.destroy_all
PlanetPicture.destroy_all
Review.destroy_all

require 'faker'


puts 'creating users and planets...'

first_user = User.create!(
  first_name: 'Luke',
  last_name: 'Skywalker',
  phone_number:Faker::PhoneNumber.phone_number_with_country_code,
  email: 'thejedidetatooined@ordrejedi.com',
  password: 'azerty'
  )

UserPicture.create!(
  remote_photo_url: 'https://www.journaldemickey.com/sites/default/files/dico/luke-skywalker-star-wars.jpg',
  user: User.last
  )

second_user = User.create!(
  first_name: "Mace",
  last_name: "Windu",
  phone_number:Faker::PhoneNumber.phone_number_with_country_code,
  email: 'nothing@email.com',
  password: 'azerty'
  )

UserPicture.create!(
  remote_photo_url: 'https://vignette.wikia.nocookie.net/fr.starwars/images/f/fc/Mace_Windu.jpg/revision/latest?cb=20170702145737',
  user: User.last
  )

third_user = User.create!(
  first_name: "Obi wan",
  last_name: "Konobi",
  phone_number:Faker::PhoneNumber.phone_number_with_country_code,
  email: 'ndasdasdg@email.com',
  password: 'azerty'
  )

UserPicture.create!(
  remote_photo_url: 'https://www.liveabout.com/thmb/pYLUnM7lQ6ef-ShHTdunHcExcw0=/768x0/filters:no_upscale():max_bytes(150000):strip_icc()/EP2-IA-60435_R_8x10-56a83bea3df78cf7729d314a.jpg',
  user: User.last
  )

fourth_user = User.create!(
  first_name: "Anakin",
  last_name: "Skywalker",
  phone_number:Faker::PhoneNumber.phone_number_with_country_code,
  email: 'nooidsdvhsfdoiv@email.com',
  password: 'azerty'
  )

UserPicture.create!(
  remote_photo_url: 'https://vafloc02.s3.amazonaws.com/isyn/images/f703/img-2456703-f.jpg',
  user: User.last
  )

fifth_user = User.create!(
  first_name: "Han",
  last_name: "Solo",
  phone_number:Faker::PhoneNumber.phone_number_with_country_code,
  email: 'nooidsdadhgreretrtbasgsfdoiv@email.com',
  password: 'azerty'
  )

UserPicture.create!(
  remote_photo_url: "https://fsmedia.imgix.net/9d/dd/37/4a/e284/475a/910d/8f6f5c024b51/han-solo.png?rect=15%2C0%2C1319%2C660&auto=format%2Ccompress&dpr=2&w=650",
  user: User.last
  )

Planet.create!(
  name: 'Abafar',
  description: 'A desert planet located in the Outer Rim with a completely white surface. Known as The Void, the planet is barely populated but is home to massive amounts of rhydonium, a scarce and volatile fuel.',
  price: 99,
  capacity: 2,
  stellar_coordinates: Faker::TvShows::StarTrek.location,
  weather: 'hot!',
  user: first_user
)

PlanetPicture.create!(
  remote_photo_url: 'https://vignette.wikia.nocookie.net/starwars/images/6/66/Abafar-ASDitV.png/revision/latest?',
  planet: Planet.last
  )

Review.create!(
  content:'Such a beautiful place, very big, many things to do... we spent a lot of time having fun!',
  rating: 4,
  planet: Planet.last,
  user: second_user
  )

Planet.create!(
  name: 'Agamar',
  description: 'Small mineral planet located in a remote section of the galaxy, its surface is covered with a layer of white salt over its red-colored soil. In Leia, Princess of Alderaan it is the location of an early Rebel Alliance outpost. Leia and her remaining Resistance forces flee there in The Last Jedi, where they face off with the First Order.',
  price: 56,
  capacity: 3,
  stellar_coordinates: Faker::TvShows::StarTrek.location,
  weather: Faker::Music.chord,
  user: first_user
)

PlanetPicture.create!(
  remote_photo_url: 'https://i.pinimg.com/originals/94/1b/a0/941ba0698464c77179782cbeda53ad6f.jpg',
  planet: Planet.last
  )

Review.create!(
  content:'Awful!, just awful... nothing to do nothing to see, waste of time',
  rating: 1,
  planet: Planet.last,
  user: second_user
  )

Planet.create!(
  name: 'Alderaan',
  description: 'Forests, mountains; home planet of Princess Leia and the House of Organa. Destroyed by the first Death Star as punishment for involvement in the Rebel Alliance and also as a demonstration of power.',
  price: 50,
  capacity: 3,
  stellar_coordinates: Faker::TvShows::StarTrek.location,
  weather: 'cold',
  user: second_user
)

PlanetPicture.create!(
  remote_photo_url: 'https://lumiere-a.akamaihd.net/v1/images/1-alderaan-bio-1_copy_d2ef86c5.jpeg?',
  planet: Planet.last
  )

Review.create!(
  content:'The best moment of my life was spent here, I got divorced...',
  rating: 3,
  planet: Planet.last,
  user: first_user
  )

Planet.create!(
  name: 'Coruscant',
  description: 'Cosmopolitan urban world consisting of one planet-wide city. Governmental center of the Galactic Republic and later the Galactic Empire.',
  price: 850,
  capacity: 2,
  stellar_coordinates: Faker::TvShows::StarTrek.location,
  weather: 'seasonal',
  user: third_user
)

PlanetPicture.create!(
  remote_photo_url: 'https://vignette.wikia.nocookie.net/starwars/images/1/16/Coruscant-EotE.jpg/revision/latest?',
  planet: Planet.last
  )

Review.create!(
  content:'I took out all the Jawas and now I am a happy Jedi!',
  rating: 5,
  planet: Planet.last,
  user: fifth_user
  )

Planet.create!(
  name: 'Dagobah',
  description: 'Swamp planet where Yoda lives, so a lot of learning you must.',
  price: 150,
  capacity: 4,
  stellar_coordinates: Faker::TvShows::StarTrek.location,
  weather: Faker::Music.chord,
  user: third_user
)

PlanetPicture.create!(
  remote_photo_url: 'https://lumiere-a.akamaihd.net/v1/images/dagobah-2-retina_92180bd1.jpeg?',
  planet: Planet.last
  )

Review.create!(
  content:'What a hoot!!... the locals were great.',
  rating: 4,
  planet: Planet.last,
  user: third_user
  )

Planet.create!(
  name: 'Endor',
  description: 'Forest moon that the second Death Star orbits. Inhabited by Ewoks. The location of the battle between the Rebel Alliance and the Empire leading to the destruction of the second Death Star.',
  price: 200,
  capacity: 2,
  stellar_coordinates: Faker::TvShows::StarTrek.location,
  weather: 'tropical and humid',
  user: fourth_user
)

PlanetPicture.create!(
  remote_photo_url: 'https://vignette.wikia.nocookie.net/starwars/images/1/1d/Endor_BF2.png/revision/latest?',
  planet: Planet.last
  )

Review.create!(
  content:'Loved the gardens and the food was just incredible!',
  rating: 4,
  planet: Planet.last,
  user: second_user
  )

Planet.create!(
  name: 'Hoth',
  description: 'Desolate ice planet and base for the Rebel Alliance.',
  price: 30,
  capacity: 2,
  stellar_coordinates: Faker::TvShows::StarTrek.location,
  weather: 'very cold!',
  user: fourth_user
)

PlanetPicture.create!(
  remote_photo_url: 'https://vignette.wikia.nocookie.net/starwars/images/8/81/Hoth_AoRCR.png/revision/latest?',
  planet: Planet.last
  )

Review.create!(
  content:'We got sick with the food and had to leave this place immediately',
  rating: 2,
  planet: Planet.last,
  user: first_user
  )

Planet.create!(
  name: 'Jakku',
  description: 'Desert planet. Site of a "graveyard" of ships damaged during the Battle of Jakku, the final battle between the New Republic and the Galactic Empire.',
  price: 150,
  capacity: 3,
  stellar_coordinates: Faker::TvShows::StarTrek.location,
  weather: 'warm',
  user: fifth_user
)

PlanetPicture.create!(
  remote_photo_url: 'https://vignette.wikia.nocookie.net/fr.starwars/images/f/f4/Jakku_-_full_-_SW_Poe_Dameron_Flight_Log_.png/revision/latest?cb=20190223074011',
  planet: Planet.last
  )

Review.create!(
  content:'Merci pour la musique, les chansons que je chante, Merci pour toute la joie',
  rating: 5,
  planet: Planet.last,
  user: fifth_user
  )

Review.create!(
  content:'I wish somebody destroys this planet once and for all...',
  rating: 1,
  planet: Planet.last,
  user: first_user
  )

Planet.create!(
  name: 'Kashyyyk',
  description: 'Forest planet and home of the Wookiees. Also the site of one of the final battles of the Clone Wars.',
  price: 80,
  capacity: 2,
  stellar_coordinates: Faker::TvShows::StarTrek.location,
  weather: 'warm during winter and cold in the summer',
  user: first_user
)

PlanetPicture.create!(
  remote_photo_url: 'https://vignette.wikia.nocookie.net/foceunleashed/images/0/01/Kashyyyk.jpg/revision/latest?',
  planet: Planet.last
  )

Review.create!(
  content:'La situation géographique est formidable, en plein coeur de la galaxie',
  rating: 5,
  planet: Planet.last,
  user: fifth_user
  )

Review.create!(
  content:'great place to take your family and watch the locals',
  rating: 4,
  planet: Planet.last,
  user: second_user
  )


Planet.create!(
  name: 'Mandalore',
  description: 'Formerly habitable planet and the subject of legends due to its history of Mandalorian warriors.',
  price: 100,
  capacity: 2,
  stellar_coordinates: Faker::TvShows::StarTrek.location,
  weather: 'cold!',
  user: third_user
)

PlanetPicture.create!(
  remote_photo_url: 'https://i.pinimg.com/originals/9c/9d/b2/9c9db27ec0e9850eb0f0590653e5ef93.png',
  planet: Planet.last
  )

Review.create!(
  content:'Planete triste, laid, sale et cher',
  rating: 1,
  planet: Planet.last,
  user: second_user
  )

Review.create!(
  content:'I love this planet, you can get cheap liquor',
  rating: 5,
  planet: Planet.last,
  user: fifth_user
  )


# Planet.create!(
#   name: 'Tatooine',
#   description: 'Desert planet and childhood home of Anakin Skywalker and Luke Skywalker.',
#   price: 30,
#   capacity: 5,
#   stellar_coordinates: Faker::TvShows::StarTrek.location,
#   activities: 'you can visit the house of Jabba',
#   weather: 'hot during the day, cold in the night',
#   local_population: Faker::Movies::StarWars.specie,
#   # remote_photo_url: 'https://i.ytimg.com/vi/a1AZHMg-J5Q/maxresdefault.jpg',
#   user: fifth_user
# )

# PlanetPicture.create!(
#   remote_photo_url: 'https://i.ytimg.com/vi/a1AZHMg-J5Q/maxresdefault.jpg',
#   planet: Planet.last
#   )


puts 'done!'
