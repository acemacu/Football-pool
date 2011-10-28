class CreateGameDays < ActiveRecord::Migration
  def self.up
    create_table :game_days do |t|
      t.datetime :date
      t.integer :weekNumber

      t.timestamps
    end
  end

  def self.down
    drop_table :game_days
  end
end
