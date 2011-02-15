require 'spec_helper'

describe "admin/profiles/index.html.erb" do
  before(:each) do
    assign(:profiles, [
      stub_model(Profile,
        :name => "Name",
        :description => "MyText",
        :race => "Race",
        :sex => "Sex"
      ),
      stub_model(Profile,
        :name => "Name",
        :description => "MyText",
        :race => "Race",
        :sex => "Sex"
      )
    ])
  end

  it "renders a list of profiles" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Race".to_s, :count => 2
    assert_select "tr>td", :text => "Sex".to_s, :count => 2
  end
end
