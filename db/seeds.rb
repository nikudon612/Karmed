# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Review.destroy_all
TestingSite.destroy_all

puts 'New Users......👥👥👥'

nick =
  User.create(
    full_name: 'Nick Bechtel',
    username: 'nickb',
    email: 'nick@gmail.com',
    phone_number: '1234567898',
    password: 'gizmo',
    # reviews: Review.find_by(id: 1),
  )

puts 'New Locations......🏝️🏝️🏝️'

rapidnyc =
  TestingSite.create(
    name: 'Rapid NYC',
    rating: 2,
    location: '380 Grove St, Ridgewood, NY',
    contact: "888-727-4308",
    hours: "M-F 9am - 5pm",
    test_type: 'PCR & Antigen', # test_type: 'Antigen',
  )
northwell =
  TestingSite.create(
    name: 'Northwell Health',
    rating: 4,
    location: '55-05 Myrtle Ave, Ridgewood, NY',
    contact: "718-502-9063",
    hours: "M-Sunday 8am - 8pm",
    test_type: 'PCR & Antigen', # test_type: 'Antigen',
  )
dragonfly =
  TestingSite.create(
    name: 'Dragonfly PHD',
    rating: 3,
    location: '315 Wyckoff Ave, Brooklyn, NY',
    contact: "N/A",
    hours: "M-F 8am - 6pm",
    test_type: 'PCR & Antigen', # test_type: 'Antigen',
  )

puts 'New Reviews.......🗣️🗣️🗣️'

review1 =
  Review.create(
    rating: 2,
    comment:
      'This place always has a long line. No structure to setup appointments.',
    testing_site_id: TestingSite.find_by(name: 'Rapid NYC').id,
    user_id: User.find_by(username: 'nickb').id,
  )
review2 =
  Review.create(
    rating: 4,
    comment:
      'Standard clinic. Clean, fast, and professional. If you can get there before the busy times - you will be in and out quickly.',
    testing_site_id: TestingSite.find_by(name: 'Northwell Health').id,
    user_id: User.find_by(username: 'nickb').id,
  )
review3 =
  Review.create(
    rating: 3,
    comment:
      'Testing truck location! Usually a long line around the corner. No real way to make an appointment but you receive your results very quickly. Sometimes even same day!',
    testing_site_id: TestingSite.find_by(name: 'Dragonfly PHD').id,
    user_id: User.find_by(username: 'nickb').id,
  )
