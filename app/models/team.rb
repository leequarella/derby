class Team < ActiveRecord::Base
  belongs_to :league
  has_many :players, through: :team_players, class_name: :person
end
