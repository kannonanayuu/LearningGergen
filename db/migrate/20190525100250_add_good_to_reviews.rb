class AddGoodToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :good, :integer
  end
end
