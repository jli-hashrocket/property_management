# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :owner do
    last_name "MyString"
    first_name "MyString"
    email "MyString"
    company "MyString"
  end
end
