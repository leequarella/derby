require 'spec_helper'

describe "bouts/index" do
  before(:each) do
    assign(:bouts, [
      stub_model(Bout,
        :venue_id => 1,
        :home_team_id => 2,
        :away_team_id => 3
      ),
      stub_model(Bout,
        :venue_id => 1,
        :home_team_id => 2,
        :away_team_id => 3
      )
    ])
  end

  it "renders a list of bouts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
  end
end
