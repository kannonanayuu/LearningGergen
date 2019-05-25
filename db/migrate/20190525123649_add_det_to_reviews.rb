class AddDetToReviews < ActiveRecord::Migration[5.2]
  def change
    add_column :reviews, :good2, :integer
    add_column :reviews, :bad2, :integer
    add_column :reviews, :good3, :integer
    add_column :reviews, :bad3, :integer
    add_column :reviews, :good4, :integer
    add_column :reviews, :bad4, :integer
    add_column :reviews, :good5, :integer
    add_column :reviews, :bad5, :integer
    add_column :reviews, :good6, :integer
    add_column :reviews, :bad6, :integer
    add_column :reviews, :good7, :integer
    add_column :reviews, :bad7, :integer
    add_column :reviews, :good8, :integer
    add_column :reviews, :bad8, :integer
    add_column :reviews, :good9, :integer
  end
end
