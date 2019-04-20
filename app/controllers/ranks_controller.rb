class RanksController < ApplicationController
    
  def index
    if params[:id] == "301" then
      ans = Answer.where(year: 30).where(jirei: 1).includes(:comments) 
    elsif params[:id] == "302" then
      ans = Answer.where(year: 30).where(jirei: 2).includes(:comments) 
    elsif params[:id] == "303" then
      ans = Answer.where(year: 30).where(jirei: 3).includes(:comments)     
    elsif params[:id] == "304" then
      ans = Answer.where(year: 30).where(jirei: 4).includes(:comments)     
    elsif params[:id] == "291" then
      ans = Answer.where(year: 29).where(jirei: 1).includes(:comments)     
    elsif params[:id] == "292" then
      ans = Answer.where(year: 29).where(jirei: 2).includes(:comments)     
    elsif params[:id] == "293" then
      ans = Answer.where(year: 29).where(jirei: 3).includes(:comments) 
    elsif params[:id] == "294" then
      ans = Answer.where(year: 29).where(jirei: 4).includes(:comments)       
    elsif params[:id] == "281" then
      ans = Answer.where(year: 28).where(jirei: 1).includes(:comments)       
    elsif params[:id] == "282" then
      ans = Answer.where(year: 28).where(jirei: 2).includes(:comments)       
    elsif params[:id] == "283" then
      ans = Answer.where(year: 28).where(jirei: 3).includes(:comments)       
    elsif params[:id] == "284" then
      ans = Answer.where(year: 28).where(jirei: 4).includes(:comments)       
    elsif params[:id] == "271" then
      ans = Answer.where(year: 27).where(jirei: 1).includes(:comments)       
    elsif params[:id] == "272" then
      ans = Answer.where(year: 27).where(jirei: 2).includes(:comments)       
    elsif params[:id] == "273" then
      ans = Answer.where(year: 27).where(jirei: 3).includes(:comments)             
    elsif params[:id] == "274" then
      ans = Answer.where(year: 27).where(jirei: 4).includes(:comments)             
    elsif params[:id] == "261" then
      ans = Answer.where(year: 26).where(jirei: 1).includes(:comments)             
    elsif params[:id] == "262" then
      ans = Answer.where(year: 26).where(jirei: 2).includes(:comments)             
    elsif params[:id] == "263" then
      ans = Answer.where(year: 26).where(jirei: 3).includes(:comments)             
    elsif params[:id] == "264" then
      ans = Answer.where(year: 26).where(jirei: 4).includes(:comments)             
    elsif params[:id] == "251" then
      ans = Answer.where(year: 25).where(jirei: 1).includes(:comments)             
    elsif params[:id] == "252" then
      ans = Answer.where(year: 25).where(jirei: 2).includes(:comments)             
    elsif params[:id] == "253" then
      ans = Answer.where(year: 25).where(jirei: 3).includes(:comments)             
    elsif params[:id] == "254" then
      ans = Answer.where(year: 25).where(jirei: 4).includes(:comments)             

    elsif params[:id] == "241" then
      ans = Answer.where(year: 24).where(jirei: 1).includes(:comments)              
    elsif params[:id] == "242" then
      ans = Answer.where(year: 24).where(jirei: 2).includes(:comments)             
    elsif params[:id] == "243" then
      ans = Answer.where(year: 24).where(jirei: 3).includes(:comments)             
    elsif params[:id] == "244" then
      ans = Answer.where(year: 24).where(jirei: 4).includes(:comments)        

    elsif params[:id] == "231" then
      ans = Answer.where(year: 23).where(jirei: 1).includes(:comments)              
    elsif params[:id] == "232" then
      ans = Answer.where(year: 23).where(jirei: 2).includes(:comments)             
    elsif params[:id] == "233" then
      ans = Answer.where(year: 23).where(jirei: 3).includes(:comments)             
    elsif params[:id] == "234" then
      ans = Answer.where(year: 23).where(jirei: 4).includes(:comments)        

    elsif params[:id] == "221" then
      ans = Answer.where(year: 22).where(jirei: 1).includes(:comments)              
    elsif params[:id] == "222" then
      ans = Answer.where(year: 22).where(jirei: 2).includes(:comments)             
    elsif params[:id] == "223" then
      ans = Answer.where(year: 22).where(jirei: 3).includes(:comments)             
    elsif params[:id] == "224" then
      ans = Answer.where(year: 22).where(jirei: 4).includes(:comments)        

    elsif params[:id] == "211" then
      ans = Answer.where(year: 21).where(jirei: 1).includes(:comments)              
    elsif params[:id] == "212" then
      ans = Answer.where(year: 21).where(jirei: 2).includes(:comments)             
    elsif params[:id] == "213" then
      ans = Answer.where(year: 21).where(jirei: 3).includes(:comments)             
    elsif params[:id] == "214" then
      ans = Answer.where(year: 21).where(jirei: 4).includes(:comments)    

    elsif params[:id] == "201" then
      ans = Answer.where(year: 20).where(jirei: 1).includes(:comments)              
    elsif params[:id] == "202" then
      ans = Answer.where(year: 20).where(jirei: 2).includes(:comments)             
    elsif params[:id] == "203" then
      ans = Answer.where(year: 20).where(jirei: 3).includes(:comments)             
    elsif params[:id] == "204" then
      ans = Answer.where(year: 20).where(jirei: 4).includes(:comments) 

    elsif params[:id] == "191" then
      ans = Answer.where(year: 19).where(jirei: 1).includes(:comments)              
    elsif params[:id] == "192" then
      ans = Answer.where(year: 19).where(jirei: 2).includes(:comments)             
    elsif params[:id] == "193" then
      ans = Answer.where(year: 19).where(jirei: 3).includes(:comments)             
    elsif params[:id] == "194" then
      ans = Answer.where(year: 19).where(jirei: 4).includes(:comments) 
    end

    @id = params[:id]
    score = 0
    judge = "C"
    ans.each do |f| 
      if f.comments.average(:score).nil?
        score = 0
        judge = "未"
      else    
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
