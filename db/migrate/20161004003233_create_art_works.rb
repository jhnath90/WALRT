class CreateArtWorks < ActiveRecord::Migration
  def change
    create_table :art_works do |t|

      t.timestamps null: false
    end
  end
end
