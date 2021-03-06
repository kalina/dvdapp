# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  fname      :string(255)
#  lname      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Director do
  pending "add some examples to (or delete) #{__FILE__}"
 before { @director = Director.new(fname: "first", lname: "last")}

  subject { @director }

  it {should respond_to(:fname)}
  it { should be_valid }

  it {should respond_to(:lname)}
  it { should be_valid }

  describe "when lname is not present" do
    before { @director.lname = " " }
    it { should_not be_valid }
  end

  describe "when fname is not present" do
    before { @director.fname = " " }
    it { should_not be_valid }
  end
  

  describe "when fname is too long" do
    before { @director.fname = "a" * 256 }
    it { should_not be_valid }
  end
  
  describe "when lname is too long" do
    before { @director.lname = "a" * 256 }
    it { should_not be_valid }
  end
end
