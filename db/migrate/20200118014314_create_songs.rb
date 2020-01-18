class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.belongs_to :artist, foreign_key: true
      t.belongs_to :genre

      t.timestamps
    end
  end
end
