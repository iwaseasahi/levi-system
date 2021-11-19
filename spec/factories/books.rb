FactoryBot.define do
  factory :book do
    version { rand(1..2) }
    book_name
    chapter { Faker::Number.within(range: 1..150) }
    verse { Faker::Number.within(range: 0..176) }
    word { Faker::Lorem.sentence }
  end
end
