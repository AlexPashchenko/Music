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
#  image_file_name    :string(255)
#  image_content_type :string(255)
#  image_file_size    :integer
#  image_updated_at   :datetime
#

class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_one :track, dependent: :destroy
  belongs_to :user
  accepts_nested_attributes_for :track

  has_attached_file :image
  validates :title, :track, presence: true
  validates_attachment_content_type :image, :content_type =>  ['image/png','image/jpeg','image/jpeg']
end
