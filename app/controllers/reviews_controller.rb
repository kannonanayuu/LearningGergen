class ReviewsController < ApplicationController

  @@did =0
  @@aa =""

  def index
    if params[:id] == "131" then
      @answers = Drill.where.not(id: 1).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]
    elsif params[:id] == "132" then
      @answers = Drill.where.not(id: 2).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "133" then
      @answers = Drill.where.not(id: 3).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "141" then
      @answers = Drill.where.not(id: 4).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "142" then
      @answers = Drill.where.not(id: 5).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "211" then
      @answers = Drill.where.not(id: 6).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "212" then
      @answers = Drill.where.not(id: 7).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "213" then
      @answers = Drill.where.not(id: 8).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "214" then
      @answers = Drill.where.not(id: 9).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "215" then
      @answers = Drill.where.not(id: 10).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "216" then
      @answers = Drill.where.not(id: 11).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "221" then
      @answers = Drill.where.not(id: 12).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "222" then
      @answers = Drill.where.not(id: 13).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "223" then
      @answers = Drill.where.not(id: 14).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "226" then
      @answers = Drill.where.not(id: 15).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "227" then
      @answers = Drill.where.not(id: 16).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "232" then
      @answers = Drill.where.not(id: 17).where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]      
    elsif params[:id] == "233" then
      @answers = Drill.where.not(id: 18).where.not(user_id: current_user.id).includes(:reviews)
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
    params.require(:review).permit(:id, :drill_id, :user_id, :strt, :s, :w, :o, :t, :j1, :j2, :j3, :j4, :good, :bad )
  end

  
  
end
