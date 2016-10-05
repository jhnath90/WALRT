class AddImageToArtWorks < ActiveRecord::Migration
  def up
   add_attachment :art_works, :image
 end

 def down
   remove_attachment :art_works, :image
 end
end
