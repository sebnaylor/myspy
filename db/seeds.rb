# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

puts "seeding"

# User.create(name: "M", email: "a@email.com", password: "123456")

# Agent.create(name: "James Bond", price: 150, height: 180, years_of_service: 14, weapon: "Glock 17", marital_status: "Single and ready to mingle", ineptitude: 4, evilness: 2, category: "Spy", skills: "Covert operations and corny Jokes", gadgets: "Exploding watch", image: "https://static.wikia.nocookie.net/jamesbond/images/e/e6/Bond_-_Sean_Connery_-_Profile.jpg/revision/latest?cb=20130217190224", user_id: 1)
# Agent.create(name: "Jason Bourne", price: 125, height: 175, years_of_service: 3, weapon: "MP-12", marital_status: "Single", ineptitude: 6, evilness: 4, category: "Spy", skills: "Martial Arts", gadgets: "Rotring 600 pen", image: "https://media.vanityfair.com/photos/545f9049cb308b5575a4902f/master/w_2560%2Cc_limit/matt-damon-bourne-again-rexusa_1338570b.jpg", user_id: 1)

# Agent.create(name: "Alex Rider", price: 100, height: 165, years_of_service: 2, weapon: "Fists", marital_status: "Single", ineptitude: 2, evilness: 1, category: "Spy", skills: "Nimble", gadgets: "Laser pocket watch", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRP9jw_ZZqhIvhhAkci6jy2DFSBqqT9DNE-gw&usqp=CAU", user_id: 1)
# Agent.create(name: "Mr Bean", price: 25, height: 178, years_of_service: 14, weapon: "Teddy", marital_status: "Lonely", ineptitude: 9, evilness: 3, category: "Informant", skills: "Funny", gadgets: "Mini", image: "https://navbharattimes.indiatimes.com/photo/msid-87869001,imgsize-113650/pic.jpg", user_id: 1)

# Agent.create(name: "Johnny English", price: 65, height: 178, years_of_service: 7, weapon: "P14", marital_status: "Single", ineptitude: 8, evilness: 1, category: "Spy", skills: "Idiocy", gadgets: "Truth serum ring", image: "https://www.denofgeek.com/wp-content/uploads/2018/10/johnny_english_strikes_again.jpg?fit=1920%2C1080", user_id: 1)

# Agent.create(name: "Austin Powers", price: 97, height: 169, years_of_service: 13, weapon: "Charisma", marital_status: "Single", ineptitude: 5, evilness: 3, category: "Spy", skills: "Persuasion", gadgets: "Exploding pants", image: "https://upload.wikimedia.org/wikipedia/en/4/42/Mike-Myers-Austin-Powers-1-.jpg", user_id: 1)

# Agent.create(name: "The Powerpuff Girls", price: 165, height: 85, years_of_service: 7, weapon: "Magic", marital_status: "Single", ineptitude: 3, evilness: 4, category: "Vigilante", skills: "Sonic scream", gadgets: "Mystic power", image: "https://video-images.vice.com/articles/6048b0d359801d00937c2d4b/lede/1615377098778-screenshot-2021-03-10-at-115106.png?crop=1xw%3A0.8173xh%3B0xw%2C0.0402xh&resize=2000%3A*", user_id: 1)

# Agent.create(name: "Pink Panther", price: 45, height: 130, years_of_service: 9, weapon: "Ingenuity", marital_status: "Single", ineptitude: 2, evilness: 9, category: "Rascal", skills: "Sneaky", gadgets: "Brain", image: "https://m.media-amazon.com/images/M/MV5BNWY3NjE3M2EtZTY3NC00YTE0LTg0ODAtMmVkMjgyZjJkZmZiXkEyXkFqcGdeQXVyODk1MjAxNzQ@._V1_FMjpg_UX1000_.jpg", user_id: 3)
# Agent.create(name: "Kim Possible", price: 95, height: 125, years_of_service: 5, weapon: "Slingshot", marital_status: "Single", ineptitude: 5, evilness: 4, category: "Vigilante", skills: "Perfectionist", gadgets: "Pom-pom", image: "https://i.discogs.com/Imigdrhmd54M2dPotdQwKqQP8kDYOGdycKyNVLrBQMA/rs:fit/g:sm/q:90/h:718/w:600/czM6Ly9kaXNjb2dz/LWltYWdlcy9BLTU3/NDcwMzYtMTQ5NDM4/Mzk4My05MTI2Lmpw/ZWc.jpeg", user_id: 1)
# Agent.create(name: "Totally Spies", price: 180, height: 156, years_of_service: 4, weapon: "Fists", marital_status: "Single", ineptitude: 3, evilness: 2, category: "Spy", skills: "Sassy", gadgets: "Multi-functional handbag", image: "https://preview.redd.it/mqiedurnm0p61.jpg?width=640&crop=smart&auto=webp&s=a916ff22e2eb2dc70288193150036fccaa0fb733", user_id: 1)

# Agent.create(name: "Harry the Bastard", price: 200, height: 182, years_of_service: 35, weapon: "Pool Cue", marital_status: "Leave my bird out of this", ineptitude: 4, evilness: 9, category: "Spy", skills: "Unpredictably escalating situations (you want some?)", gadgets: "Green rizla", image: "https://m.media-amazon.com/images/M/MV5BZmQzNjU5MDgtNGExMi00YmMwLWFkODQtYjFiY2I3ZDkwZGI4XkEyXkFqcGdeQXVyMDM2NDM2MQ@@._V1_.jpg", user_id: 1)
Booking.destroy_all

# Booking.create!(user_id: 2, agent_id: 59, start_date: "07/07/2022", end_date: "08/08/2022")

# Booking.create!(user_id: 2, agent_id: 1, start_date: "09/07/2022", end_date: "09/08/2022")

# Booking.create!(user_id: 2, agent_id: 3, start_date: "10/07/2022", end_date: "10/08/2022")


puts "created #{Booking.count} bookings"
