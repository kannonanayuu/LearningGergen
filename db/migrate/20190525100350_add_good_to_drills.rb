class AddGoodToDrills < ActiveRecord::Migration[5.2]
  def change
    add_column :drills, :good, :integer
  end
end
