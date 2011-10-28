class CreateSeasons < ActiveRecord::Migration
  def self.up
    create_table :seasons do |t|
      t.integer :number
      t.integer :year_start
      t.integer :year_end

      t.timestamps
    end
  end

  def self.down
    drop_table :seasons
  end
end
