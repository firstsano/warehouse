FactoryBot.define do
  factory :abonent, class: Abonent do
    name { |i| Faker::Name.name + " #{i}" }
    login {  |i| Faker::Lorem.word + " #{i}" }
    sequence(:bill_account)
    sequence(:profile_account)
  end
end
