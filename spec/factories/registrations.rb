# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :registration do
    event nil
    first_name "MyString"
    last_name "MyString"
    address "MyString"
    child_name "MyString"
    child_age 1
    payment_method "MyString"
    other_details "MyText"
    user nil
  end
end
