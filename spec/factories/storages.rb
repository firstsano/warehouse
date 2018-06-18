FactoryBot.define do
  factory :storage, class: Storage do
    sequence(:name) { |i| Faker::Lorem.word + " #{i}" }
  end
end
