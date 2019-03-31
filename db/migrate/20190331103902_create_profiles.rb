class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.integer :user_id    
      t.integer :capa
      t.integer :expe
      t.integer :most1
      t.integer :most2
      t.integer :most3
      t.integer :most4
      t.timestamps
    end
  end
end
