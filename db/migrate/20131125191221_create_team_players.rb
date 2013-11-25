class CreateTeamPlayers < ActiveRecord::Migration
  def change
    create_table :team_players do |t|
      t.integer :team_id
      t.integer :person_id
      t.boolean :active
      t.date    :date_joined

      t.timestamps
    end
  end
end
