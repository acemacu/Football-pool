class AddDateToGame < ActiveRecord::Migration
  def self.up
    add_column :games, :date, :date
    add_column :games, :time, :time
  end

  def self.down
    remove_column :games, :time
    remove_column :games, :date
  end
end
