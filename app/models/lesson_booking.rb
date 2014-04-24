class LessonBooking < ActiveRecord::Base
  belongs_to :lesson_registration
end
