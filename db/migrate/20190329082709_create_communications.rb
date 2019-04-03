class CreateCommunications < ActiveRecord::Migration[5.2]
  def change
    create_table :communications do |t|
      t.integer:title_id
      t.text:comment
      t.timestamps
    end
  end
end
