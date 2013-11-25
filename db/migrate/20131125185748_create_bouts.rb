class CreateBouts < ActiveRecord::Migration
  def change
    create_table :bouts do |t|
      t.integer :venue_id
      t.integer :home_team_id
      t.integer :away_team_id
      t.datetime :start

      t.timestamps
    end
  end
end
