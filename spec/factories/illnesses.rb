FactoryBot.define do
  factory :illness do
    description { Faker::Lorem.word }
    name { Faker::Lorem.word }
    user
  end
end
