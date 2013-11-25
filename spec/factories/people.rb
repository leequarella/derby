# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :person do
    first_name "MyString"
    last_name "MyString"
    address_1 "MyString"
    address_2 "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
    email "MyString"
    derby_name "MyString"
    phone "MyString"
    user_name "MyString"
    password_digest "MyString"
  end
end
