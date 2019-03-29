class CreateCommunications < ActiveRecord::Migration[5.2]
  def change
    create_table :communications do |t|
      t.integer:user_id
      t.string:title
      t.text:comment
      t.timestamps
    end
  end
end
