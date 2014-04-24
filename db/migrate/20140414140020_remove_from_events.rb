class RemoveFromEvents < ActiveRecord::Migration
  def change
  	remove_column :events, :Date, :DateTime
  end
end
