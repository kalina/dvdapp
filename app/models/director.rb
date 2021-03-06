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

class Director < ActiveRecord::Base
  attr_accessible :fname, :lname
  has_many :dvds
  
  validates :fname, :presence => true
  validates :fname, :length => { :maximum => 255 }
  
  validates :lname, :presence => true
  validates :lname, :length => { :maximum => 255 }
  
  def full_name
    "#{lname}. #{fname}"
  end


end
