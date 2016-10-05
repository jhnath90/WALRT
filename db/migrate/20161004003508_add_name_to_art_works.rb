class AddNameToArtWorks < ActiveRecord::Migration
  def change
    add_column :art_works, :name, :text
  end
end
