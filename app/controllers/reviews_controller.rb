class ReviewsController < ApplicationController

  @@aid =0
  @@aa =""

  def index
    if params[:id] == "131" then
      @answers = Drill.where.not(user_id: current_user.id).includes(:reviews)
      @id = params[:id]
    end
  end

  def show
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
  
  
  
  
end
