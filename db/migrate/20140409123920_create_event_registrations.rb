class CreateEventRegistrations < ActiveRecord::Migration
  def change
    create_table :event_registrations do |t|
      t.references :event, index: true
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :child_name
      t.integer :child_age
      t.string :payment_method
      t.text :other_details
      t.references :user, index: true

      t.timestamps
    end
  end
end
