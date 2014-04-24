class AddCoachesToEvents < ActiveRecord::Migration
  def change
    add_column :events, :coaches, :string
    add_column :events, :string, :string
  end
end
