FactoryGirl.define do
  factory :exercise do
    name "Preacher curls"
    description "Do something"
    association :group
  end
end
