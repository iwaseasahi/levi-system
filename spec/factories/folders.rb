FactoryBot.define do
  factory :folder do
    title { Faker::Lorem.word }
    sticky { false }
  end
end
