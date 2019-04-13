class ReviewsController < ApplicationController

  @@did =0
  @@aa =""

  def index
    if params[:id] == "131" then
      @answers = Drill.where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]
    end
  end

  def show
    @comments = Review.where(drill_id: params[:drill_id]).last  
    
  end

  def edit
  end

  def new
    @answer = Drill.find(params[:id])
    @@aid = @answer.id
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
  
  private
  def review_params
    params.require(:review).permit(:id, :drill_id, :user_id, :strt, :s, :w, :o, :t, :j1, :j2, :j3, :j4 )
  end

  
  
end
