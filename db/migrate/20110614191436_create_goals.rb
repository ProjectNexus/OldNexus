class CreateGoals < ActiveRecord::Migration
  def self.up
    create_table :goals do |t|
      t.string :name
      t.text :description
      t.text :timeline
      t.integer :goalable_id
      t.string :golable_type

      t.timestamps
    end
  end

  def self.down
    drop_table :goals
  end
end
