class CreateTagLinks < ActiveRecord::Migration
  def self.up
    create_table :tag_links do |t|
      t.integer :taggable_id
      t.string :taggable_type
      t.integer :tag_id
      t.string :type

      t.timestamps
    end
  end

  def self.down
    drop_table :tag_links
  end
end
