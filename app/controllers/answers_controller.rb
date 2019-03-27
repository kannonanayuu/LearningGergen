class AnswersController < ApplicationController
 
 @@select =0
 
   def index

      
  end

  def create
    # ストロングパラメーターを使用
    ans = Answer.new(answer_params)
    ans.user_id = current_user.id



    if @@select == "301" then
        ans.year = 30
        ans.jirei = 1
    elsif @@select == "302" then  
        ans.year = 30
        ans.jirei = 2
    elsif @@select == "303" then  
        ans.year = 30
        ans.jirei = 3
    elsif @@select == "304" then  
        ans.year = 30
        ans.jirei = 4
    elsif @@select == "291" then  
        ans.year = 29
        ans.jirei = 1
    elsif @@select == "292" then
        ans.year = 29
        ans.jirei = 2
    elsif @@select == "293" then  
        ans.year = 29
        ans.jirei = 3
    elsif @@select == "294" then  
        ans.year = 29
        ans.jirei = 4
    elsif @@select == "281" then  
        ans.year = 28
        ans.jirei = 1
    elsif @@select == "282" then  
        ans.year = 28
        ans.jirei = 2
    elsif @@select == "283" then  
        ans.year = 28
        ans.jirei = 3
    elsif @@select == "284" then  
        ans.year = 28
        ans.jirei = 4
    elsif @@select == "271" then  
        ans.year = 27
        ans.jirei = 1
    elsif @@select == "272" then  
        ans.year = 27
        ans.jirei = 2
    elsif @@select == "273" then  
        ans.year = 27
        ans.jirei = 3
    elsif @@select == "274" then  
        ans.year = 27
        ans.jirei = 4
    elsif @@select == "261" then  
        ans.year = 26
        ans.jirei = 1
    elsif @@select == "262" then  
        ans.year = 26
        ans.jirei = 2
    elsif @@select == "263" then  
        ans.year = 26
        ans.jirei = 3
    elsif @@select == "264" then  
        ans.year = 26
        ans.jirei = 4
    end
    
    # DBへ保存する
    ans.save
    # トップ画面へリダイレクト
    redirect_to   answer_path(ans.id)
  
      
  end
  
  def show
     @answer = Answer.find(params[:id])
     
  end

  def edit
    @answer = Answer.find(params[:id])  
  end

  def new
     @answer = Answer.new
     @id = params[:id]
     @@select = @id

  end

  def destroy
    ans = Answer.find(params[:id])
    ans.destroy
    redirect_to  answers_index_path
      
  end

  def update
    answer = Answer.find(params[:id])
    answer.update(answer_params)
    redirect_to answers_index_path
  end
  
    private
    def answer_params
        params.require(:answer).permit(:id, :year, :jirei, :ans1, :ans2, :ans3, :ans4, :ans5, :ans6 )
    end
  
  
end

