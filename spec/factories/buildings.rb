# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :building do
    address "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
    description "MyString"
    owner_id 1
  end
end
