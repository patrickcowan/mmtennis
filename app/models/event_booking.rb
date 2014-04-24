class EventBooking < ActiveRecord::Base
  belongs_to :event_registration
  
end
