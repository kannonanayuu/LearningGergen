class ReviewsController < ApplicationController

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
      
      
  end
  
  
  
  
end
