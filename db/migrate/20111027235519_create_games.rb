class CreateGames < ActiveRecord::Migration
  def self.up
    create_table :games do |t|
      t.integer :home_team_id
      t.integer :away_team_id
      t.integer :score_home
      t.integer :score_away
      t.integer :gameDay_id

      t.timestamps
    end
  end

  def self.down
    drop_table :games
  end
end
