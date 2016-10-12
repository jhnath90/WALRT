class AddArtWorkIdToVotes < ActiveRecord::Migration
  def change
    add_column :votes, :art_work_id, :integer
  end
end
