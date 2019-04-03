class CreateTitles < ActiveRecord::Migration[5.2]
  def change
    create_table :titles do |t|
      t.integer:user_id
      t.string :title
      t.text :contents
      t.timestamps
    end
  end
end
