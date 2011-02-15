require 'spec_helper'

describe "admin/profiles/show.html.erb" do
  before(:each) do
    @profile = assign(:profile, stub_model(Profile,
      :name => "Name",
      :description => "MyText",
      :race => "Race",
      :sex => "Sex"
    ))
  end

  it "renders attributes in <p>" do
    render
    rendered.should match(/Name/)
    rendered.should match(/MyText/)
    rendered.should match(/Race/)
    rendered.should match(/Sex/)
  end
end
