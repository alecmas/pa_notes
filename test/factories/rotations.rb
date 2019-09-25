FactoryGirl.define do
  factory :rotation do
    name { Faker::Hipster.sentence }
    description { Faker::Hipster.paragraph }
    association(:user)
  end
end
