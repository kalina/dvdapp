# == Schema Information
#
# Table name: dvds
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  release     :integer
#  genre_id    :integer
#  director_id :integer
#  notes       :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Dvd < ActiveRecord::Base
  attr_accessible :title, :release, :genre_id, :director_id, :notes, :url

  belongs_to :genre
  belongs_to :director

  #delegate :genre_id, :to=>:genre, :prefix=>true, :allow_nil=>true

  validates :title, :presence => true
  validates :title, :length => {:maximum => 255}
  validates :notes, :length => {:maximum => 255} 	

  validates :release, :numericality => { :greater_than_or_equal_to => 1900 }
end
