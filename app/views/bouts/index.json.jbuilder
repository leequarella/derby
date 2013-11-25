json.array!(@bouts) do |bout|
  json.extract! bout, :venue_id, :home_team_id, :away_team_id, :start
  json.url bout_url(bout, format: :json)
end
