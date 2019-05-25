class AddBat9ToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :bad9, :integer
  end
end
