class Person < ActiveRecord::Base
  has_many :teams, through: :team_players
end
