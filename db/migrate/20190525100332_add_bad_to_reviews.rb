class AddBadToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :bad, :integer
 
  end
end
