# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :relationship do
    user_id 1
    event_id 1
    address "MyString"
  end
end
