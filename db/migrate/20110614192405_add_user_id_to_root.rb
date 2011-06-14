class AddUserIdToRoot < ActiveRecord::Migration
  def self.up
    add_column :roots, :user_id, :integer
  end

  def self.down
    remove_column :roots, :user_id
  end
end
