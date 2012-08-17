require 'spec_helper'

describe "directors/show" do
  before(:each) do
    @director = assign(:director, stub_model(Director,
      :fname => "Fname",
      :lname => "Lname"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Fname/)
    rendered.should match(/Lname/)
  end
end
