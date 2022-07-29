FactoryBot.define do
  factory :item do
    name { Faker::JapaneseMedia::Naruto.character }
    expiration { Faker::Date.between(from: '2000-01-01', to: '2022-01-01') }
  end
end
