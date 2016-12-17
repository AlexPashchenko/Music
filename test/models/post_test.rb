# == Schema Information
#
# Table name: posts
#
#  id                 :integer          not null, primary key
#  title              :string(255)
#  description        :text(65535)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  user_id            :integer
#  category_id        :integer
#  music_file_name    :string(255)
#  music_content_type :string(255)
#  music_file_size    :integer
#  music_updated_at   :datetime
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
