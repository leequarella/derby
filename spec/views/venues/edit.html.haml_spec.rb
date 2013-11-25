require 'spec_helper'

describe "venues/edit" do
  before(:each) do
    @venue = assign(:venue, stub_model(Venue,
      :name => "",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString"
    ))
  end

  it "renders the edit venue form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", venue_path(@venue), "post" do
      assert_select "input#venue_name[name=?]", "venue[name]"
      assert_select "input#venue_address[name=?]", "venue[address]"
      assert_select "input#venue_city[name=?]", "venue[city]"
      assert_select "input#venue_state[name=?]", "venue[state]"
      assert_select "input#venue_zip[name=?]", "venue[zip]"
    end
  end
end
