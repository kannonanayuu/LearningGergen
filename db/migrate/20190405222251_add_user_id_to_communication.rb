class AddUserIdToCommunication < ActiveRecord::Migration[5.2]
  def change
    add_column :communications, :user_id, :integer
  end
end
