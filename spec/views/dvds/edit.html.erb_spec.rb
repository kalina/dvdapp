require 'spec_helper'

describe "dvds/edit" do
  before(:each) do
    @dvd2 = assign(:dvd, stub_model(Dvd2))
  end

  it "renders the edit dvd2 form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dvds_path(@dvd), :method => "post" do
    end
  end
end
