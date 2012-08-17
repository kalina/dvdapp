# == Schema Information
#
# Table name: dvds
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  release    :integer
#  genre      :integer
#  director   :integer
#  notes      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class DvdTest < ActiveSupport::TestCase
   test "save without title" do
     dvd = Dvd.new
     assert !dvd.save
   end

#   test "add dvd" do
#     assert_difference(Dvd.count) do
#       post :create, :post => {:title => 'Bad Santa'}
#     end
#   assert_redirected_to dvd_path(assigns(:dvd))
#   assert_equal 'Dvd was successfully created.', flash[:notice]   
end
