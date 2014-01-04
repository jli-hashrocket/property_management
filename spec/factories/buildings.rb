# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :building do
    address "1234 some street"
    city "washington"
    state "DC"
    zip "22032"
    description "Some building"
    owner_id 1
  end
end
