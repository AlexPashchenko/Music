class RemoveMusicFromPostandAddInOwnTab < ActiveRecord::Migration[5.0]
  def change
    remove_attachment :posts, :music
    add_attachment :tracks, :music
  end

end
