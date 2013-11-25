require 'spec_helper'

describe "people/new" do
  before(:each) do
    assign(:person, stub_model(Person,
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
    ).as_new_record)
  end

  it "renders new person form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", people_path, "post" do
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
