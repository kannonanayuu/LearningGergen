class ReviewsController < ApplicationController

  @@did =0
  @@aa =""

  def index
    if params[:id] == "131" then
      @answers = Drill.where(jirei: 131).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]
    elsif params[:id] == "132" then
      @answers = Drill.where(jirei: 132).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "133" then
      @answers = Drill.where(jirei: 133).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "141" then
      @answers = Drill.where(jirei: 141).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "142" then
      @answers = Drill.where(jirei: 142).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "211" then
      @answers = Drill.where(jirei: 211).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "212" then
      @answers = Drill.where(jirei: 212).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "213" then
      @answers = Drill.where(jirei: 213).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "214" then
      @answers = Drill.where(jirei: 214).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "215" then
      @answers = Drill.where(jirei: 215).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "216" then
      @answers = Drill.where(jirei: 216).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "221" then
      @answers = Drill.where(jirei: 221).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "222" then
      @answers = Drill.where(jirei: 222).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "223" then
      @answers = Drill.where(jirei: 223).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "226" then
      @answers = Drill.where(jirei: 226).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "227" then
      @answers = Drill.where(jirei: 227).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "232" then
      @answers = Drill.where(jirei: 232).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "233" then
      @answers = Drill.where(jirei: 233).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    end
    

    
  end

  def show
    @comments = Review.where(drill_id: params[:drill_id]).last  
    
  end

  def edit
    @comments = Review.where(drill_id: params[:drill_id]).last    
  end

  def new
    @answer = Drill.find(params[:id])
    @@did = @answer.id
    @comment = Review.new
    @comment.drill_id = @answer.id
    @@aa = params[:id]  
      
  end
  
   def create
     # ストロングパラメーターを使用
    jdg = Review.new(review_params)
    jdg.user_id = current_user.id
    jdg.drill_id = @@did

    if(jdg.strt.present? or  jdg.s.present? or  jdg.w.present? or jdg.o.present? or jdg.o.present? or jdg.t.present?  or jdg.j1.present? or jdg.j2.present? or jdg.j3.present? or jdg.j4.present?)then
      if jdg.good.nil?
        jdg.good =0
      end
      
      if jdg.good2.nil?
        jdg.good2 =0
      end  
     
      if jdg.good3.nil?
        jdg.good3 =0
      end
    
      if jdg.good4.nil?
        jdg.good4 =0
      end
     
      if jdg.good5.nil?
        jdg.good5 =0
      end
     
      if jdg.good6.nil?
        jdg.good6 =0
      end 
    
      if jdg.good7.nil?
        jdg.good7 =0
      end 
    
      if jdg.good8.nil?
        jdg.good8 =0
      end 
    
      if jdg.good9.nil?
        jdg.good9 =0
      end 
      
      jdg.save
      redirect_to  drill_reviews_path(jdg.drill_id)  
    else
      redirect_to  top_path  
    end
    
  end
  
  def update
    comment = Review.where(drill_id: params[:drill_id]).last  
    comment.update(review_params)
    redirect_to top_path
    
  end

  
  
  private
  def review_params
    params.require(:review).permit(:id, :drill_id, :user_id, :strt, :s, :w, :o, :t, :j1, :j2, :j3, :j4, :good, :good2, :good3, :good4, :good5, :good6, :good7, :good8, :good9 )
  end

  
  
end
