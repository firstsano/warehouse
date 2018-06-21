FactoryBot.define do
  factory :site_setting, class: SiteSetting do
    name { Faker::Lorem.unique.word }
  end
end
