# == Schema Information
#
# Table name: genres
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Genre < ActiveRecord::Base
  attr_accessible :name

  has_many :dvds
  
  validate :name, :presence => true
  validates :name, :length => { :maximum => 255 }
end
