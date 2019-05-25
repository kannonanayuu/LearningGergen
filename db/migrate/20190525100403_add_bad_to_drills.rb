class AddBadToDrills < ActiveRecord::Migration[5.2]
  def change
    add_column :drills, :bad, :integer
  end
end
