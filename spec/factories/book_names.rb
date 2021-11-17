FactoryBot.define do
  factory :book_name do
    testament { rand(1..2) }
    japanese { SecureRandom.hex(6)  }
    english { SecureRandom.hex(6) }
  end
end
