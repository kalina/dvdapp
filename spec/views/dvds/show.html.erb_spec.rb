require 'spec_helper'

describe "dvds/show" do
  before(:each) do
    @dvd2 = assign(:dvd, stub_model(Dvd))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
