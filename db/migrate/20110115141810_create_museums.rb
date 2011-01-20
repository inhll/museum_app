class CreateMuseums < ActiveRecord::Migration
  def self.up
    create_table :museums do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :website
      t.text :free_days

      t.timestamps
    end
  end

  def self.down
    drop_table :museums
  end
end
