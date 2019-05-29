class GoodsController < ApplicationController
    
   def index
    if params[:id] == "131" then
      count_good(1)
    elsif params[:id] == "132" then
      count_good(2)
    elsif params[:id] == "133" then
      count_good(3)
    elsif params[:id] == "141" then
      count_good(4)
    elsif params[:id] == "142" then
      count_good(5)
    elsif params[:id] == "211" then
      count_good(6)
    elsif params[:id] == "212" then
      count_good(7)
    elsif params[:id] == "213" then
      count_good(8)
    elsif params[:id] == "214" then
      count_good(9)
    elsif params[:id] == "215" then
      count_good(10)
    elsif params[:id] == "216" then
      count_good(11)
    elsif params[:id] == "221" then
      count_good(12)
    elsif params[:id] == "222" then
      count_good(13)
    elsif params[:id] == "223" then
      count_good(14)
    elsif params[:id] == "226" then
      count_good(15)
    elsif params[:id] == "227" then
      count_good(16)
    elsif params[:id] == "232" then
      count_good(17) 
    elsif params[:id] == "233" then
      count_good(18)
    end  
    puts "%%%%%%%%%%"
    puts params[:id]
    puts "%%%%%%%%%%"
    
  end
  
  def count_good(id)
    ans = Drill.where(id: id).includes(:reviews)   
    puts "### ans ######"
    puts ans
    puts "###########"    
    
    @id = id
    good = 0
    bad  = 0
    ans.each do |f| 
      good = f.reviews.good + f.reviews.good2 + f.reviews.good3 + f.reviews.good4  
      if good.nil?
        good = 0
        bad  = 0
        ans.where(id: f.id).update( good: good, bad: bad )
      else    
        good =(f.reviews.good + f.reviews.good2 + f.reviews.good3 + f.reviews.good4)  
        bad =(f.reviews.bad + f.reviews.bad2 + f.reviews.bad3 + f.bad.good4)
      end
      ans.where(id: f.id).update( good: good, bad: bad )
      puts "###########"
      puts good
      puts bad
      puts @id
      puts "###########"
     end        
    end
      
  end

  def show
    puts "###########"
    puts  params[:id]
    puts "##########"
    @answers = Answer.where(id: params[:id]).includes(:reviews)  
  
  end
     

