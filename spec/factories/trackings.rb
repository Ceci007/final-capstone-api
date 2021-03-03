FactoryBot.define do
  factory :tracking do
    date { Faker::Date.between(from: '2014-09-23', to: '2014-09-25') }
    temperature { Faker::Number.number(digits: 2) }
    mood { Faker::Lorem.word }
    illness
  end
end
