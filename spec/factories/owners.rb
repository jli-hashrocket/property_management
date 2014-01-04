# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :owner do
    last_name "Wayne"
    first_name "Bruce"
    email "batman@batcave.com"
    company "Wayne Enterprises"
  end
end
