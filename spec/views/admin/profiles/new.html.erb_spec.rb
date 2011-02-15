require 'spec_helper'

describe "admin/profiles/new.html.erb" do
  before(:each) do
    assign(:profile, stub_model(Profile,
      :name => "MyString",
      :description => "MyText",
      :race => "MyString",
      :sex => "MyString"
    ).as_new_record)
  end

  it "renders new profile form" do
    render

    # Run the generator again with the --webrat-matchers flag if you want to use webrat matchers
    assert_select "form", :action => admin_profiles_path, :method => "post" do
      assert_select "input#profile_name", :name => "profile[name]"
      assert_select "textarea#profile_description", :name => "profile[description]"
      assert_select "input#profile_race", :name => "profile[race]"
      assert_select "input#profile_sex", :name => "profile[sex]"
    end
  end
end
