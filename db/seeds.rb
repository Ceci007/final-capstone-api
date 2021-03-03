# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# rubocop:disable LineLength
user1 = User.create(username: 'Ceci', password: 'password123')
user2 = User.create(username: 'Sol', password: 'password1234')

illness1 = Illness.create(user_id: 1, name: 'Colitis', description: 'Stomachache')
illness2 = Illness.create(user_id: 1, name: 'Headache')

tracking1 = Tracking.create(illness_id: 1, date: "2021-03-01", mood: 3, temperature: 36.5, medicines: ["Omeprazol:1", "Peptobismol:2"], symptons: ["Weakness:1", "Stomachache:3"])
tracking2 = Tracking.create(illness_id: 1, date: "2021-03-05", mood: 1, temperature: 36.7)
# rubocop:enable LineLength
