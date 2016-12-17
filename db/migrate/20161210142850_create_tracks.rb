class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :tracks do |t|
      t.integer :post_id

      t.timestamps
    end
  end
end
