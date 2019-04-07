class CommentsController < ApplicationController
  
  @@aid =0
  @@aa =""
  @@cc = ""

  def index
    if params[:id] == "301" then
      @answers = Answer.where(year: 30).where(jirei: 1)
      no = 1
      @cnt =[]
      @avg =[]
      @name =[]
      @ans_id= []
      @answers.each do |ans|
        @cnt[no] = Comment.where(answer_id: ans.id).count(:judge1)
        @avg[no] = Comment.where(answer_id: ans.id).average(:judge1)
        @name[no] = User.find(ans.user_id).name
	    @ans_id[no] = ans.id
        if @avg[no] === nil then
           @avg[no] = 0
        end
        
        no = no + 1
      end
      
      @id = params[:id]
      
     
    end
    
    
  end

  def show
    @comments = Comment.where(answer_id: params[:answer_id])
    
   end

  def edit

  end

  def update

  end

  def create
     # ストロングパラメーターを使用
    jdg = Comment.new(comment_params)
    jdg.user_id = current_user.id
    jdg.answer_id = @@aid
    jdg.save
    # トップ画面へリダイレクト
    redirect_to  answer_comments_path(jdg.answer_id)
      
      
  end
  
  def new
    @answer = Answer.find(params[:id])
    @@aid = @answer.id
    @comment = Comment.new
    @comment.answer_id = @answer.id
    @@aa = params[:id]
  
  end
  
  private
  def comment_params
    params.require(:comment).permit(:id,:answer_id,:user_id,:judge1,:ans1,:judge2,:ans2,:judge3,:ans3,:judge4,:ans4,:judge5,:ans5,:judge6,:ans6,:judge7,:ans7,:judge8,:ans8,:judge9,:ans9,:judge10,:ans10 )
  end
  
  
  
  
end



