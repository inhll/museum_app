class ChangeColumn < ActiveRecord::Migration
  def self.up
    change_column :museums, :free_days, :text
  end

  def self.down
  end
end
