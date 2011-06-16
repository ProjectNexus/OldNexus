class AddCategoryIdToSeed < ActiveRecord::Migration
  def self.up
    add_column :seeds, :category_id, :integer
  end

  def self.down
    remove_column :seeds, :category_id
  end
end
