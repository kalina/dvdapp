require 'spec_helper'

describe "directors/index" do
  before(:each) do
    assign(:directors, [
      stub_model(Director,
        :fname => "Fname",
        :lname => "Lname"
      ),
      stub_model(Director,
        :fname => "Fname",
        :lname => "Lname"
      )
    ])
  end

  it "renders a list of directors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Fname".to_s, :count => 2
    assert_select "tr>td", :text => "Lname".to_s, :count => 2
  end
end
