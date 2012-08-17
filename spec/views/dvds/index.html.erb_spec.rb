require 'spec_helper'

describe "dvds/index" do
  before(:each) do
    assign(:dvds, [
      stub_model(Dvd),
      stub_model(Dvd)
    ])
  end

  it "renders a list of dvds" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
