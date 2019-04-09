class RanksController < ApplicationController
    
  def index
    if params[:id] == "301" then
      @answers = Answer.where(year: 30).where(jirei: 1)        
        
    end
  end

  def show
  end
end
