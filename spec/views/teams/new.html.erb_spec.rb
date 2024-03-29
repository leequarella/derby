require 'spec_helper'

describe "teams/new" do
  before(:each) do
    assign(:team, stub_model(Team,
      :league_id => 1,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new team form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", teams_path, "post" do
      assert_select "input#team_league_id[name=?]", "team[league_id]"
      assert_select "input#team_name[name=?]", "team[name]"
    end
  end
end
