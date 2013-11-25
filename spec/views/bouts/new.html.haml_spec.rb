require 'spec_helper'

describe "bouts/new" do
  before(:each) do
    assign(:bout, stub_model(Bout,
      :venue_id => 1,
      :home_team_id => 1,
      :away_team_id => 1
    ).as_new_record)
  end

  it "renders new bout form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bouts_path, "post" do
      assert_select "input#bout_venue_id[name=?]", "bout[venue_id]"
      assert_select "input#bout_home_team_id[name=?]", "bout[home_team_id]"
      assert_select "input#bout_away_team_id[name=?]", "bout[away_team_id]"
    end
  end
end
