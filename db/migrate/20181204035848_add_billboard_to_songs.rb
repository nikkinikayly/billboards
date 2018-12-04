class AddBillboardToSongs < ActiveRecord::Migration[5.2]
  def change
    add_reference :songs, :billboard, foreign_key: true
  end
end
