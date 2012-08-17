require 'spec_helper'

describe "directors/edit" do
  before(:each) do
    @director = assign(:director, stub_model(Director,
      :fname => "MyString",
      :lname => "MyString"
    ))
  end

  it "renders the edit director form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => directors_path(@director), :method => "post" do
      assert_select "input#director_fname", :name => "director[fname]"
      assert_select "input#director_lname", :name => "director[lname]"
    end
  end
end
