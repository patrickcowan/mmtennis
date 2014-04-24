class AddVdtToEvents < ActiveRecord::Migration
  def change
    add_column :events, :Venue, :String, unique: true
    add_column :events, :Date,  :datetime
    add_column :events, :Time,  :time
  end
end
