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

class Track < ApplicationRecord
  belongs_to :post, optional: true
  belongs_to :genre, optional: true
  has_attached_file :music
  validates :music, presence: true
  validates_attachment_content_type :music, :content_type => [ 'audio/ogg', 'audio/mpeg', 'audio/x-mpeg', 'audio/mp3', 'audio/x-mp3', 'audio/mpeg3', 'audio/x-mpeg3', 'audio/mpg', 'audio/x-mpg', 'audio/x-mpegaudio' ]
end
