# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :event_user, :class => 'EventUsers' do
    user_id 1
    event_id 1
  end
end
