class RanksController < ApplicationController
    
  def index
    if params[:id] == "301" then
      ans = Answer.where(year: 30).where(jirei: 1).includes(:comments)    
      @id = params[:id]
      score = 0
      judge = "C"
      ans.each do |f| 
        score =  f.comments.average(:score).round(0) 
        if(score >= 60)
          judge = "A"
        elsif (score >= 50)
          judge = "B"
        elsif (score >= 40)
          judge = "C"
        else
          judge = "D"    
        end
        ans.where(id: f.id).update( score: score, judge: judge )
        puts score
        puts judge
      end        
    end
    @answers = Answer.where(year: 30).where(jirei: 1).order(score: "desc")
    
  end

  def show
    puts "###########"
    puts  params[:id]
    puts "##########"
    @answers = Answer.where(id: params[:id]).where(year: 30).where(jirei: 1).includes(:comments)  
  
  end
  
  
  
end
