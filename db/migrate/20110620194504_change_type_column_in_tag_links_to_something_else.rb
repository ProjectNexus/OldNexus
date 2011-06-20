class ChangeTypeColumnInTagLinksToSomethingElse < ActiveRecord::Migration
  def self.up
    rename_column :tag_links, :type, :tag_type
  end

  def self.down
    rename_column :tag_links, :tag_type, :type
  end
end
