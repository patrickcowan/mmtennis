class EventRegistration < ActiveRecord::Base
  belongs_to :event
  belongs_to :user

  accepts_nested_attributes_for :event
  accepts_nested_attributes_for :user
end
