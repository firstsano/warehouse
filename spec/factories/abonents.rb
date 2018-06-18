FactoryBot.define do
  factory :abonent, class: Abonent do
    sequence(:name) { |i| Faker::Name.name + " #{i}" }
    sequence(:login) {  |i| Faker::Lorem.word + " #{i}" }
    sequence(:bill_account)
    sequence(:profile_account)
  end
end
