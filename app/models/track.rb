class Track < ApplicationRecord
  belongs_to :post, optional: true
  has_attached_file :music
  validates_attachment_content_type :music, :content_type => [ 'audio/ogg', 'audio/mpeg', 'audio/x-mpeg', 'audio/mp3', 'audio/x-mp3', 'audio/mpeg3', 'audio/x-mpeg3', 'audio/mpg', 'audio/x-mpg', 'audio/x-mpegaudio' ]
end
