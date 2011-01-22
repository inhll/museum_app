class AddHoursToMuseums < ActiveRecord::Migration
  def self.up
    add_column :museums, :hours, :string
  end

  def self.down
    remove_column :museums, :hours
  end
end
