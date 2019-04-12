class RanksController < ApplicationController
    
  def index
    if params[:id] == "301" then
      @answers = Answer.where(year: 30).where(jirei: 1).includes(:comments)    
      @id = params[:id]
      puts "fffffffffffffff"
    
      
    end
  end

  def show
    @answers = Answer.where(year: 30).where(jirei: 1).includes(:comments)  
  
      
  end
end
