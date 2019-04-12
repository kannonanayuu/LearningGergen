class AddJudgeToAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :answers, :judge, :string
  end
end
