class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
     t.integer:answer_id
     t.integer:user_id
     t.integer:judge1
     t.text:ans1
     t.integer:judge2
     t.text:ans2
     t.integer:judge3
     t.text:ans3
     t.integer:judge4
     t.text:ans4
     t.integer:judge5
     t.text:ans5
     t.integer:judge6
     t.text:ans6
     t.integer:judge7
     t.text:ans7
     t.integer:judge8
     t.text:ans8
     t.integer:judge9
     t.text:ans9
     t.integer:judge10
     t.text:ans10
     t.timestamps
    end
  end
end
