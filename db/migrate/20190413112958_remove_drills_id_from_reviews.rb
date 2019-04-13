class RemoveDrillsIdFromReviews < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :drills_id, :integer
  end
end
