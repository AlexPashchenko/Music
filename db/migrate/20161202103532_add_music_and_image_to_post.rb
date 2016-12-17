class AddMusicAndImageToPost < ActiveRecord::Migration[5.0]
  def up
    add_attachment :posts, :music
    add_attachment :posts, :image

  end

  def down
    remove_attachment :posts, :music
    remove_attachment :posts, :image
  end
end
