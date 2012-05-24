# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :exercise do
    name "Preacher curls"
    description "Do something"
    association :group
  end
end
