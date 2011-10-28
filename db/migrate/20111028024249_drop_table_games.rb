class DropTableGames < ActiveRecord::Migration
  def self.up
    drop_table :games
  end

  def self.down
    create_table :games do |t|
      t.integer :home_team_id
      t.integer :away_team_id
      t.integer :score_home
      t.integer :score_away
      t.integer :gameDay_id
      t.references :week

      t.timestamps
    end
  end
end
