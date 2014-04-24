class AddColumnsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :Venue, :string
    add_column :events, :Date, :Date
    add_column :events, :Time, :Time
  end
end
