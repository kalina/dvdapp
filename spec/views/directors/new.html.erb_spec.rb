require 'spec_helper'

describe "directors/new" do
  before(:each) do
    assign(:director, stub_model(Director,
      :fname => "MyString",
      :lname => "MyString"
    ).as_new_record)
  end

  it "renders new director form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => directors_path, :method => "post" do
      assert_select "input#director_fname", :name => "director[fname]"
      assert_select "input#director_lname", :name => "director[lname]"
    end
  end
end
