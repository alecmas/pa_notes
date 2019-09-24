FactoryGirl.define do
  factory :rotation do
    name "Dr. Welsh"
    description "Cardiology"
    association(:user)
  end
end
