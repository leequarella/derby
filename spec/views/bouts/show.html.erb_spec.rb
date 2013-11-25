require 'spec_helper'

describe "bouts/show" do
  before(:each) do
    @bout = assign(:bout, stub_model(Bout,
      :venue_id => 1,
      :home_team_id => 2,
      :away_team_id => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
  end
end
