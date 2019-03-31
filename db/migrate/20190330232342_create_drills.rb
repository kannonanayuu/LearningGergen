class CreateDrills < ActiveRecord::Migration[5.2]
  def change
    create_table :drills do |t|
      t.integer:user_id  
      t.text:strt
      t.text:s
      t.text:w
      t.text:o
      t.text:t
      t.text:j1    
      t.text:j2       
      t.text:j3           
      t.text:j4  
      t.timestamps
    end
  end
end
