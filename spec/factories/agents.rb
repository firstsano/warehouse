FactoryBot.define do
  factory :agent, class: Agent do
    name { Faker::Name.name }
  end
end
