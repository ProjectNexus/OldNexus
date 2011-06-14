class FixGolableTypeTypo < ActiveRecord::Migration
  def self.up
    rename_column :goals, :golable_type, :goalable_type
  end

  def self.down
    rename_column :goals, :goalble_type, :golaable_type
  end
end
