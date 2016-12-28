class AddGenreIdToTrack < ActiveRecord::Migration[5.0]
  def change

    add_column :tracks, :genre_id, :integer
  end
end
