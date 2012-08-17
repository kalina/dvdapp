# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Genre do
  pending "add some examples to (or delete) #{__FILE__}"
  
  before {@genre = Genre.new(name: "test")}

  subject {@genre}

#  it {should respond_to(:name)}
#  it { should be_valid }
  
  describe "when name is not present" do
    before { @genre.name = " " }
    it { should_not be_valid }     
  end

  describe "when name is too long" do
    before { @genre.name = "a" * 256 }
    it { should_not be_valid }    
  end

  describe "Name already exists" do
    before do
      genre_with_same_name = @genre.dup
      genre_with_same_name.save
    end

    it { should_not be_valid }
  end
end
