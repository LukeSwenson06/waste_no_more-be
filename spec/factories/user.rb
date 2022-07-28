FactoryBot.define do
  factory :user do
    name { Faker::Books::TheKingkillerChronicle.character }
    email { Faker::Internet.email }
  end
end
