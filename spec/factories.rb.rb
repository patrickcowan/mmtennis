FactoryGirl.define do
  factory :user do
    sequence(:name)  { |n| "Person #{n}" }
    sequence(:email) { |n| "person_#{n}@example.com"}
    password "password"
    password_confirmation "password"

    factory : do
    	admin true
    end
  end

  factory :relationship do
  	address "Some address"
  	user
end