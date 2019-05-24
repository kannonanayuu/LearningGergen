class GoodsController < ApplicationController
    
   @id =""
   
   def index
    if params[:id] == "131" then
      ans = Drill.where(id: 1).includes(:reviews)
      @id =params[:id]
    elsif params[:id] == "132" then
      ans = Drill.where(id: 2).includes(:reviews) 
      @id =params[:id]
    elsif params[:id] == "133" then
      ans = Drill.where(id: 3).includes(:reviews)
      @id =params[:id]
    elsif params[:id] == "141" then
      ans = Drill.where(id: 4).includes(:reviews)
      @id =params[:id]
    elsif params[:id] == "142" then
      ans = Drill.where(id: 5).includes(:reviews)
      @id =params[:id]
    elsif params[:id] == "211" then
      ans = Drill.where(id: 6).includes(:reviews)
      @id =params[:id]
    elsif params[:id] == "212" then
      ans = Drill.where(id: 7).includes(:reviews)
      @id =params[:id]
    elsif params[:id] == "213" then
      @ans = Drill.where(id: 8).includes(:reviews) 
      @id =params[:id]
    elsif params[:id] == "214" then
      @ans = Drill.where(id: 9).includes(:reviews)
      @id =params[:id]
    elsif params[:id] == "215" then
      @ans = Drill.where(id: 10).includes(:reviews)
      @id =params[:id]
    elsif params[:id] == "216" then
      @ans = Drill.where(id: 11).includes(:reviews)
      @id =params[:id]
    elsif params[:id] == "221" then
      @ans = Drill.where(id: 12).includes(:reviews)
      @id =params[:id]
    elsif params[:id] == "222" then
      @ans = Drill.where(id: 13).includes(:reviews)
      @id =params[:id]
    elsif params[:id] == "223" then
      @ans = Drill.where(id: 14).includes(:reviews)
      @id =params[:id]
    elsif params[:id] == "226" then
      @ans = Drill.where(id: 15).includes(:reviews)
      @id =params[:id]
    elsif params[:id] == "227" then
      @ans = Drill.where(id: 16).includes(:reviews)
      @id =params[:id]
    elsif params[:id] == "232" then
      @ans = Drill.where(id: 17).includes(:reviews)
      @id =params[:id]
    elsif params[:id] == "233" then
      @ans = Drill.where(id: 18).includes(:reviews) 
      @id =params[:id]
    end    
  end
  
  def get_score(id,year,jirei)
    ans = Drill.where(id: year).where(jirei: jirei).includes(:reviews)   
    @id = id
    score = 0
    judge = "C"
    ans.each do |f| 
      if f.reviews.average(:score).nil?
        score = 0
        judge = "未"
        ans.where(id: f.id).update( score: score, judge: judge )
      else    
        score =  f.reviews.average(:score).round(0)
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
      puts "###########"
      puts score
      puts judge
      puts "###########"
     end        
    end
    
    @answers = Drill.where(id: year).where(jirei: jirei).order(score: "desc")  
      
  end

  def show
    puts "###########"
    puts  params[:id]
    puts "##########"
    @answers = Answer.where(id: params[:id]).includes(:reviews)  
  
  end
     
    
    
    
    
end
