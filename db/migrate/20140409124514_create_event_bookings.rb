class CreateEventBookings < ActiveRecord::Migration
  def change
    create_table :event_bookings do |t|
      t.references :event_registration, index: true

      t.timestamps
    end
  end
end
