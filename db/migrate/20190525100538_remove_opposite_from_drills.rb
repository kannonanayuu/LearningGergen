class RemoveOppositeFromDrills < ActiveRecord::Migration[5.2]
  def change
    remove_column :drills, :opposite, :integer
  end
end
