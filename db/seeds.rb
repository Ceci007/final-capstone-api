# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user1 = User.create(username: 'Ceci')
user2 = User.create(username: 'Sol')

illness1 = Illness.create(user_id: 1, name: 'Colitis', description: 'StomachAche')
illness2 = Illness.create(user_id: 1, name: 'Headache')

tracking1 = Tracking.create(illness_id: 1, date: "2020-06-11", mood: 3, temperature: 36.5)
tracking2 = Tracking.create(illness_id: 1, date: "2020-06-10", mood: 1, temperature: 36.7)

medicine1 = Medicine.create(tracking_id: 1, name: 'Omeprazol', quantity: 1)
medicine2 = Medicine.create(tracking_id: 1, name: 'Peptobismol', quantity: 2)

symptom1 = Symptom.create(tracking_id: 1, name: 'Weakness', intensity: 1)
sympton2 = Symptom.create(tracking_id: 1, name: 'Stomache', intensity: 3)
