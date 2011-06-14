class CreateResourceStocks < ActiveRecord::Migration
  def self.up
    create_table :resource_stocks do |t|
      t.integer :resource_id
      t.integer :resourceable_id
      t.string :resourceable_type
      t.string :quantity
      t.string :demand
      t.text :note

      t.timestamps
    end
  end

  def self.down
    drop_table :resource_stocks
  end
end
