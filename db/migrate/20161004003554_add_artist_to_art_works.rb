class AddArtistToArtWorks < ActiveRecord::Migration
  def change
    add_column :art_works, :artist, :text
  end
end
