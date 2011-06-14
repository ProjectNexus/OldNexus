class CreateSeeds < ActiveRecord::Migration
  def self.up
    create_table :seeds do |t|
      t.string :name
      t.text :problem
      t.text :vision
      t.text :scope
      t.integer :visibility

      t.timestamps
    end
  end

  def self.down
    drop_table :seeds
  end
end
