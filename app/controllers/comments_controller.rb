class CommentsController < ApplicationController
  
  @@aid =0
  @@aa =""
  @@cc = ""

  def index
    if params[:id] == "301" then
      @answers = Answer.where(year: 30).where(jirei: 1).where.not(id: current_user.id).includes(:comments)
      no = 1
      @cnt =[]
      @avg =[]
      @name =[]
      @ans_id= []
      @answers.each do |ans|
        @cnt[no] = ans.comments.count
        @avg[no] = ans.created_at.strftime('%Y/%m/%d')
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
    @comments = Comment.where(answer_id: params[:answer_id]).last
  
  end

  def edit
    @comments = Comment.where(answer_id: params[:answer_id]).last
  end

  def update
    comment = Comment.where(answer_id: params[:answer_id]).last  
    comment.update(comment_params)
    redirect_to top_path
    
  end


  def create
     # ストロングパラメーターを使用
    jdg = Comment.new(comment_params)
    jdg.user_id = current_user.id
    jdg.answer_id = @@aid
    ans = Answer.find(@@aid)
    sum = 0
    if(ans.year == 30)then
        if(ans.jirei == 1)
          sum = (jdg.judge1 * 20)/10    
          sum = sum + (jdg.judge2 * 20)/10
          sum = sum + (jdg.judge3 * 20)/10
          sum = sum + (jdg.judge4 * 20)/10
          sum = sum + (jdg.judge5 * 20)/10
          jdg.score = sum
        end
    end
    
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



