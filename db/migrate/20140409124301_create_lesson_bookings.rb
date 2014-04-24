class CreateLessonBookings < ActiveRecord::Migration
  def change
    create_table :lesson_bookings do |t|
      t.references :lesson_registration, index: true

      t.timestamps
    end
  end
end
