class CreateAssociations < ActiveRecord::Migration
  def change
    create_table :associations do |t|
      t.integer :user_id
      t.integer :event_id

      t.timestamps
    end
    add_index :associations, :user_id
    add_index :associations, :event_id
    add_index :associations, [:user_id, :event_id], unique: true
  end
end
