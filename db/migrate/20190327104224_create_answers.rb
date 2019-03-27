class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.integer:year
      t.integer:jirei
      t.integer:user_id
      t.text:ans1
      t.text:ans2
      t.text:ans3
      t.text:ans4
      t.text:ans5
      t.text:ans6
      t.text:ans7
      t.text:ans8
      t.text:ans9
      t.text:ans10
      t.timestamps
    end
  end
end
