FactoryBot.define do
  factory :storage, class: Storage do
    name { |i| Faker::Lorem.word + " #{i}" }
  end
end
