class AddJireiToDrills < ActiveRecord::Migration[5.2]
  def change
    add_column :drills, :jirei, :integer
  end
end
