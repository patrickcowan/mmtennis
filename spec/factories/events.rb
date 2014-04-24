# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event, :class => 'Events' do
    title "MyString"
    user_id 1
  end
end
