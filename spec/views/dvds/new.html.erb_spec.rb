require 'spec_helper'

describe "dvds/new" do
  before(:each) do
    assign(:dvd, stub_model(Dvd).as_new_record)
  end

  it "renders new dvd form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dvds_path, :method => "post" do
    end
  end
end
