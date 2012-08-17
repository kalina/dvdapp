require 'spec_helper'

describe Dvd do
  before { @dvd = Dvd.new(title: "Bad Santa", release: 2003)}

  subject { @dvd }

  it {should respond_to(:title)}
  it { should be_valid }

  describe "when title is not present" do
    before { @dvd.title = " " }
    it { should_not be_valid }
  end

  describe "when release is not present" do
    before { @dvd.release = nil }
    it { should_not be_valid }
  end
  
  describe "when release is not a number" do
    before { @dvd.release = "a" }
    it { should_not be_valid }
  end

  describe "when title is too long" do
    before { @dvd.title = "a" * 256 }
    it { should_not be_valid }
  end
  
  describe "when notes is too long" do
    before { @dvd.notes = "a" * 256 }
    it { should_not be_valid }
  end
  
  describe "when release is before 1900" do
    before { @dvd.release = 1899 }
    it { should_not be_valid }
  end

end
