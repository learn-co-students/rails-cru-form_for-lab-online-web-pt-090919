class RemoveArtistsFromArtists < ActiveRecord::Migration[5.0]
  def change
    remove_column :artists, :artists, :string
  end
end
