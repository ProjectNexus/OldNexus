class AddUserIdToSeed < ActiveRecord::Migration
  def self.up
    add_column :seeds, :user_id, :integer
  end

  def self.down
    remove_column :seeds, :user_id
  end
end
