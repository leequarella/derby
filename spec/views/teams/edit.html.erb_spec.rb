require 'spec_helper'

describe "teams/edit" do
  before(:each) do
    @team = assign(:team, stub_model(Team,
      :league_id => 1,
      :name => "MyString"
    ))
  end

  it "renders the edit team form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", team_path(@team), "post" do
      assert_select "input#team_league_id[name=?]", "team[league_id]"
      assert_select "input#team_name[name=?]", "team[name]"
    end
  end
end
