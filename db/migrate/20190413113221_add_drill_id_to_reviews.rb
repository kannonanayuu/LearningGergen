class AddDrillIdToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :drill_id, :integer
  end
end
