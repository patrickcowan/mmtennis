class RemoveColumnsFromTable < ActiveRecord::Migration
  def change
    remove_column :events, :Venue, :DateTime
    remove_column :events, :Time, :DateTime
  end
end
