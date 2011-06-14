class AddStatusToSeed < ActiveRecord::Migration
  def self.up
    add_column :seeds, :status, :integer
  end

  def self.down
    remove_column :seeds, :status
  end
end
