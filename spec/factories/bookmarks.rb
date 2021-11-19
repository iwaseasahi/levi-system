FactoryBot.define do
  factory :bookmark do
    folder
    title { Faker::Lorem.word }
    action_name { 'index' }
    controller_name { 'books' }
    params_value { {"utf8":"✓","book_search_form":{"n":"1","c":"6","vf":"5","vt":"8","lang":"2"}} }
    position { rand(1..10) }
  end
end
