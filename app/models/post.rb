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

class Post < ApplicationRecord
  has_many :comments
  has_one :track
  accepts_nested_attributes_for :track
  belongs_to :user
  belongs_to :category
  validates :title, presence: true
  has_attached_file :image
  validates_attachment_content_type :image, :content_type =>  ['image/png','image/jpeg','image/jpeg']
end
