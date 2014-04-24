class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :user_id
      t.integer :event_id
      t.string :address

      t.timestamps
    end
    add_index :relationships, [:user_id, :created_at]
  end
end
