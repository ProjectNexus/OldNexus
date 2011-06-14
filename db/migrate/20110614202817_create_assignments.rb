class CreateAssignments < ActiveRecord::Migration
  def self.up
    create_table :assignments do |t|
      t.integer :user_id
      t.integer :goal_id
      t.text :task

      t.timestamps
    end
  end

  def self.down
    drop_table :assignments
  end
end
