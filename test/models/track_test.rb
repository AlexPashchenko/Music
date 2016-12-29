# == Schema Information
#
# Table name: tracks
#
#  id                 :integer          not null, primary key
#  post_id            :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  music_file_name    :string(255)
#  music_content_type :string(255)
#  music_file_size    :integer
#  music_updated_at   :datetime
#  genre_id           :integer
#

require 'test_helper'

class TrackTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
