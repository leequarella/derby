require 'spec_helper'

describe "people/edit" do
  before(:each) do
    @person = assign(:person, stub_model(Person,
      :first_name => "MyString",
      :last_name => "MyString",
      :address_1 => "MyString",
      :address_2 => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :email => "MyString",
      :derby_name => "MyString",
      :phone => "MyString",
      :user_name => "MyString",
      :password_digest => "MyString"
    ))
  end

  it "renders the edit person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", person_path(@person), "post" do
      assert_select "input#person_first_name[name=?]", "person[first_name]"
      assert_select "input#person_last_name[name=?]", "person[last_name]"
      assert_select "input#person_address_1[name=?]", "person[address_1]"
      assert_select "input#person_address_2[name=?]", "person[address_2]"
      assert_select "input#person_city[name=?]", "person[city]"
      assert_select "input#person_state[name=?]", "person[state]"
      assert_select "input#person_zip[name=?]", "person[zip]"
      assert_select "input#person_email[name=?]", "person[email]"
      assert_select "input#person_derby_name[name=?]", "person[derby_name]"
      assert_select "input#person_phone[name=?]", "person[phone]"
      assert_select "input#person_user_name[name=?]", "person[user_name]"
      assert_select "input#person_password_digest[name=?]", "person[password_digest]"
    end
  end
end
