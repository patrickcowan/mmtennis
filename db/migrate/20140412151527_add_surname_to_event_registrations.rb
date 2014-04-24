class AddSurnameToEventRegistrations < ActiveRecord::Migration
  def change
  	add_column :event_registrations, :surname, :string
  end
end
