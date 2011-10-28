class DropTableWeek < ActiveRecord::Migration
  def self.up
    drop_table :weeks
  end

  def self.down
    create_table :weeks do |t|
      t.integer :number
      t.references :season
      t.timestamps
    end
  end
end
