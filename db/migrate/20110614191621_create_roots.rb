class CreateRoots < ActiveRecord::Migration
  def self.up
    create_table :roots do |t|
      t.string :name
      t.text :problem
      t.text :vision
      t.text :scope
      t.integer :visibility
      t.integer :status

      t.timestamps
    end
  end

  def self.down
    drop_table :roots
  end
end
