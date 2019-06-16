class CommentsController < ApplicationController
  
  @@aid =0
  @@aa =""
  @@cc = ""
  @@det = 0
  def index
    puts "###### comments index #######"
    puts params[:id]
    puts "#############################"  
    if params[:id] == "301" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 30).where(jirei: 1).includes(:comments)
      @id = params[:id]
    elsif params[:id] == "302" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 30).where(jirei: 2).includes(:comments)
      @id = params[:id]  
    elsif params[:id] == "303" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 30).where(jirei: 3).includes(:comments)
      @id = params[:id]        
    elsif params[:id] == "304" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 30).where(jirei: 4).includes(:comments)
      @id = params[:id]        
      
    elsif params[:id] == "291" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 29).where(jirei: 1).includes(:comments)
      @id = params[:id]
    elsif params[:id] == "292" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 29).where(jirei: 2).includes(:comments)
      @id = params[:id]  
    elsif params[:id] == "293" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 29).where(jirei: 3).includes(:comments)
      @id = params[:id]        
    elsif params[:id] == "294" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 29).where(jirei: 4).includes(:comments)
      @id = params[:id]  

    elsif params[:id] == "281" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 28).where(jirei: 1).includes(:comments)
      @id = params[:id]
    elsif params[:id] == "282" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 28).where(jirei: 2).includes(:comments)
      @id = params[:id]  
    elsif params[:id] == "283" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 28).where(jirei: 3).includes(:comments)
      @id = params[:id]        
    elsif params[:id] == "284" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 28).where(jirei: 4).includes(:comments)
      @id = params[:id]  

    elsif params[:id] == "271" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 27).where(jirei: 1).includes(:comments)
      @id = params[:id]
    elsif params[:id] == "272" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 27).where(jirei: 2).includes(:comments)
      @id = params[:id]  
    elsif params[:id] == "273" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 27).where(jirei: 3).includes(:comments)
      @id = params[:id]        
    elsif params[:id] == "274" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 27).where(jirei: 4).includes(:comments)
      @id = params[:id]  
      
    elsif params[:id] == "261" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 26).where(jirei: 1).includes(:comments)
      @id = params[:id]
    elsif params[:id] == "262" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 26).where(jirei: 2).includes(:comments)
      @id = params[:id]  
    elsif params[:id] == "263" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 26).where(jirei: 3).includes(:comments)
      @id = params[:id]        
    elsif params[:id] == "264" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 26).where(jirei: 4).includes(:comments)
      @id = params[:id]  
 
    elsif params[:id] == "251" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 25).where(jirei: 1).includes(:comments)
      @id = params[:id]
    elsif params[:id] == "252" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 25).where(jirei: 2).includes(:comments)
      @id = params[:id]  
    elsif params[:id] == "253" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 25).where(jirei: 3).includes(:comments)
      @id = params[:id]        
    elsif params[:id] == "254" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 25).where(jirei: 4).includes(:comments)
      @id = params[:id]  
 
    elsif params[:id] == "241" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 24).where(jirei: 1).includes(:comments)
      @id = params[:id]
    elsif params[:id] == "242" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 24).where(jirei: 2).includes(:comments)
      @id = params[:id]  
    elsif params[:id] == "243" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 24).where(jirei: 3).includes(:comments)
      @id = params[:id]        
    elsif params[:id] == "244" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 24).where(jirei: 4).includes(:comments)
      @id = params[:id]  
 
    elsif params[:id] == "231" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 23).where(jirei: 1).includes(:comments)
      @id = params[:id]
    elsif params[:id] == "232" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 23).where(jirei: 2).includes(:comments)
      @id = params[:id]  
    elsif params[:id] == "233" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 23).where(jirei: 3).includes(:comments)
      @id = params[:id]        
    elsif params[:id] == "234" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 23).where(jirei: 4).includes(:comments)
      @id = params[:id]  
 
    elsif params[:id] == "221" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 22).where(jirei: 1).includes(:comments)
      @id = params[:id]
    elsif params[:id] == "222" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 22).where(jirei: 2).includes(:comments)
      @id = params[:id]  
    elsif params[:id] == "223" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 22).where(jirei: 3).includes(:comments)
      @id = params[:id]        
    elsif params[:id] == "224" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 22).where(jirei: 4).includes(:comments)
      @id = params[:id]  
 
    elsif params[:id] == "211" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 21).where(jirei: 1).includes(:comments)
      @id = params[:id]
    elsif params[:id] == "212" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 21).where(jirei: 2).includes(:comments)
      @id = params[:id]  
    elsif params[:id] == "213" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 21).where(jirei: 3).includes(:comments)
      @id = params[:id]        
    elsif params[:id] == "214" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 21).where(jirei: 4).includes(:comments)
      @id = params[:id]  
 
    elsif params[:id] == "201" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 20).where(jirei: 1).includes(:comments)
      @id = params[:id]
    elsif params[:id] == "202" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 20).where(jirei: 2).includes(:comments)
      @id = params[:id]  
    elsif params[:id] == "203" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 20).where(jirei: 3).includes(:comments)
      @id = params[:id]        
    elsif params[:id] == "204" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 20).where(jirei: 4).includes(:comments)
      @id = params[:id]  
 
    elsif params[:id] == "191" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 19).where(jirei: 1).includes(:comments)
      @id = params[:id]
    elsif params[:id] == "192" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 19).where(jirei: 2).includes(:comments)
      @id = params[:id]  
    elsif params[:id] == "193" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 19).where(jirei: 3).includes(:comments)
      @id = params[:id]        
    elsif params[:id] == "194" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 19).where(jirei: 4).includes(:comments)
      @id = params[:id]  
       
    elsif params[:id] == "181" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 18).where(jirei: 1).includes(:comments)
      @id = params[:id]
    elsif params[:id] == "182" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 18).where(jirei: 2).includes(:comments)
      @id = params[:id]  
    elsif params[:id] == "183" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 18).where(jirei: 3).includes(:comments)
      @id = params[:id]        
    elsif params[:id] == "184" then
      @answers = Answer.where.not(user_id: current_user.id).where(year: 18).where(jirei: 4).includes(:comments)
      @id = params[:id]  
 
    end
    
    
  end

  def show
    puts "###### comments show #######"
    puts params[:answer_id]
    puts "############################"  
    @comments = Comment.where(answer_id: params[:answer_id]).last
  
  end

  def edit
    puts "###### comments edit #######"
    puts params[:answer_id]
    puts "############################"    
      
    @comments = Comment.where(answer_id: params[:answer_id]).last
  end

  def update
    puts "###### comments update #######"
    puts params[:answer_id]
    puts "############################"        
      
    comment = Comment.where(answer_id: params[:answer_id]).last  
    comment.update(comment_params)
    redirect_to top_path
    
  end


  def create
    puts "###### comments create #######"
    puts comment_params
    puts "############################"        
    jdg = Comment.new(comment_params)
    jdg.user_id = current_user.id
    jdg.answer_id = @@aid
    ans = Answer.find(@@aid)
    sum = 0
    @@det = 0
    if(ans.year == 30)then
        if(ans.jirei == 1)
          puts "###### year30 jirei1 #######"
          puts comment_params
          puts "############################"                
        if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil))then
            sum = (jdg.judge1 * 20)/10    
            sum = sum + (jdg.judge2 * 20)/10
            sum = sum + (jdg.judge3 * 20)/10
            sum = sum + (jdg.judge4 * 20)/10
            sum = sum + (jdg.judge5 * 20)/10
            jdg.score = sum
            @@det = 1
          end    
        end
        if(ans.jirei == 2)
          puts "###### year30 jirei2 #######"
          puts comment_params
          puts "############################"                
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) )then
            sum = (jdg.judge1 * 25)/10    
            sum = sum + (jdg.judge2 * 25)/10
            sum = sum + (jdg.judge3 * 25)/10
            sum = sum + (jdg.judge4 * 25)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 3)
          puts "###### year30 jirei3 #######"
          puts comment_params
          puts "############################"                
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil))then
            sum = (jdg.judge1 * 20)/10    
            sum = sum + (jdg.judge2 * 20)/10
            sum = sum + (jdg.judge3 * 20)/10
            sum = sum + (jdg.judge4 * 20)/10
            sum = sum + (jdg.judge5 * 20)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 4)
          puts "###### year30 jirei4 #######"
          puts comment_params
          puts "############################"                
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil) and (jdg.judger6 != nil) and (jdg.judge7 != nil) and  (jdg.judge8 != nil))then
            sum = (jdg.judge1 * 20)/10    
            sum = sum + (jdg.judge2 * 12)/10
            sum = sum + (jdg.judge3 * 12)/10
            sum = sum + (jdg.judge4 * 11)/10
            sum = sum + (jdg.judge5 * 10)/10
            sum = sum + (jdg.judge6 * 15)/10
            sum = sum + (jdg.judge7 * 15)/10
            sum = sum + (jdg.judge8 * 15)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
    end
    if(ans.year == 29)then
        if(ans.jirei == 1)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil))then
            sum = (jdg.judge1 * 20)/10    
            sum = sum + (jdg.judge2 * 20)/10
            sum = sum + (jdg.judge3 * 20)/10
            sum = sum + (jdg.judge4 * 20)/10
            sum = sum + (jdg.judge5 * 20)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 2)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) )then
            sum = (jdg.judge1 * 20)/10    
            sum = sum + (jdg.judge2 * 25)/10
            sum = sum + (jdg.judge3 * 30)/10
            sum = sum + (jdg.judge4 * 20)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 3)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) )then
            sum = (jdg.judge1 * 30)/10    
            sum = sum + (jdg.judge2 * 20)/10
            sum = sum + (jdg.judge3 * 20)/10
            sum = sum + (jdg.judge4 * 30)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 4)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil) and (jdg.judge6 != nil) and  (jdg.judge7 != nil) and  (jdg.judge8 != nil) and (jdg.judge9 != nil) and  (jdg.judge10 != nil))then
            sum = (jdg.judge1 * 15)/10    
            sum = sum + (jdg.judge2 * 10)/10
            sum = sum + (jdg.judge3 * 6)/10
            sum = sum + (jdg.judge4 * 6)/10
            sum = sum + (jdg.judge5 * 6)/10
            sum = sum + (jdg.judge6 * 19)/10
            sum = sum + (jdg.judge7 * 10)/10
            sum = sum + (jdg.judge8 * 8)/10
            sum = sum + (jdg.judge9 * 10)/10
            sum = sum + (jdg.judge10 * 10)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
    end
    if(ans.year == 28)then
        if(ans.jirei == 1)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil))then
            sum = (jdg.judge1 * 20)/10    
            sum = sum + (jdg.judge2 * 20)/10
            sum = sum + (jdg.judge3 * 20)/10
            sum = sum + (jdg.judge4 * 20)/10
            sum = sum + (jdg.judge5 * 20)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 2)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil))then
            sum = (jdg.judge1 * 20)/10    
            sum = sum + (jdg.judge2 * 15)/10
            sum = sum + (jdg.judge3 * 15)/10
            sum = sum + (jdg.judge4 * 20)/10
            sum = sum + (jdg.judge5 * 30)/10
            jdg.score = sum
            @@det = 1
          end    
        end
        if(ans.jirei == 3)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) )then
            sum = (jdg.judge1 * 20)/10    
            sum = sum + (jdg.judge2 * 30)/10
            sum = sum + (jdg.judge3 * 20)/10
            sum = sum + (jdg.judge4 * 30)/10
            jdg.score = sum
            @@det = 1 
          end    
        end
        if(ans.jirei == 4)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil) and (jdg.judge6 != nil) and  (jdg.judge7 != nil))then
            sum = (jdg.judge1 * 15)/10    
            sum = sum + (jdg.judge2 * 10)/10
            sum = sum + (jdg.judge3 * 15)/10
            sum = sum + (jdg.judge4 * 20)/10
            sum = sum + (jdg.judge5 * 15)/10
            sum = sum + (jdg.judge6 * 15)/10
            sum = sum + (jdg.judge7 * 10)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
    end
    if(ans.year == 27)then
        if(ans.jirei == 1)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil))then
            sum = (jdg.judge1 * 20)/10    
            sum = sum + (jdg.judge2 * 20)/10
            sum = sum + (jdg.judge3 * 20)/10
            sum = sum + (jdg.judge4 * 20)/10
            sum = sum + (jdg.judge5 * 20)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 2)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil) and (jdg.judge6 != nil))then
            sum = (jdg.judge1 * 10)/10    
            sum = sum + (jdg.judge2 * 15)/10
            sum = sum + (jdg.judge3 * 15)/10
            sum = sum + (jdg.judge4 * 20)/10
            sum = sum + (jdg.judge5 * 20)/10
            sum = sum + (jdg.judge6 * 20)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 3)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil) and (jdg.judge6 != nil))then
            sum = (jdg.judge1 * 10)/10    
            sum = sum + (jdg.judge2 * 15)/10
            sum = sum + (jdg.judge3 * 15)/10
            sum = sum + (jdg.judge4 * 20)/10
            sum = sum + (jdg.judge5 * 20)/10
            sum = sum + (jdg.judge6 * 20)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 4)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil) and (jdg.judge6 != nil) and  (jdg.judge7 != nil) and  (jdg.judge8 != nil) and (jdg.judge9 != nil) and  (jdg.judge10 != nil))then
            sum = (jdg.judge1 * 14)/10    
            sum = sum + (jdg.judge2 * 14)/10
            sum = sum + (jdg.judge3 * 14)/10
            sum = sum + (jdg.judge4 * 10)/10
            sum = sum + (jdg.judge5 * 10)/10
            sum = sum + (jdg.judge6 * 6)/10
            sum = sum + (jdg.judge7 * 10)/10
            sum = sum + (jdg.judge8 * 10)/10
            sum = sum + (jdg.judge9 * 6)/10
            sum = sum + (jdg.judge10 * 6)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
    end
    if(ans.year == 26)then
        if(ans.jirei == 1)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil))then
            sum = (jdg.judge1 * 20)/10    
            sum = sum + (jdg.judge2 * 20)/10
            sum = sum + (jdg.judge3 * 20)/10
            sum = sum + (jdg.judge4 * 20)/10
            sum = sum + (jdg.judge5 * 20)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 2)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil))then
            sum = (jdg.judge1 * 25)/10    
            sum = sum + (jdg.judge2 * 25)/10
            sum = sum + (jdg.judge3 * 15)/10
            sum = sum + (jdg.judge4 * 15)/10
            sum = sum + (jdg.judge5 * 20)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 3)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil))then
            sum = (jdg.judge1 * 10)/10    
            sum = sum + (jdg.judge2 * 20)/10
            sum = sum + (jdg.judge3 * 20)/10
            sum = sum + (jdg.judge4 * 20)/10
            sum = sum + (jdg.judge5 * 30)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 4)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil) and (jdg.judge6 != nil) and  (jdg.judge7 != nil))then
            sum = (jdg.judge1 * 24)/10    
            sum = sum + (jdg.judge2 * 15)/10
            sum = sum + (jdg.judge3 * 15)/10
            sum = sum + (jdg.judge4 * 10)/10
            sum = sum + (jdg.judge5 * 10)/10
            sum = sum + (jdg.judge6 * 10)/10
            sum = sum + (jdg.judge7 * 16)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
    end
    if(ans.year == 25)then
        if(ans.jirei == 1)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil) and (jdg.judge6 != nil))then
            sum = (jdg.judge1 * 15)/10    
            sum = sum + (jdg.judge2 * 20)/10
            sum = sum + (jdg.judge3 * 15)/10
            sum = sum + (jdg.judge4 * 20)/10
            sum = sum + (jdg.judge5 * 15)/10
            sum = sum + (jdg.judge6 * 15)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 2)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil) and (jdg.judge6 != nil))then
            sum = (jdg.judge1 * 20)/10    
            sum = sum + (jdg.judge2 * 20)/10
            sum = sum + (jdg.judge3 * 15)/10
            sum = sum + (jdg.judge4 * 15)/10
            sum = sum + (jdg.judge5 * 15)/10
            sum = sum + (jdg.judge6 * 15)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 3)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil))then
            sum = (jdg.judge1 * 15)/10    
            sum = sum + (jdg.judge2 * 15)/10
            sum = sum + (jdg.judge3 * 20)/10
            sum = sum + (jdg.judge4 * 20)/10
            sum = sum + (jdg.judge5 * 30)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 4)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil))then
            sum = (jdg.judge1 * 25)/10    
            sum = sum + (jdg.judge2 * 15)/10
            sum = sum + (jdg.judge3 * 15)/10
            sum = sum + (jdg.judge4 * 15)/10
            sum = sum + (jdg.judge5 * 30)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
    end
    if(ans.year == 24)then
        if(ans.jirei == 1)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil))then
            sum = (jdg.judge1 * 20)/10    
            sum = sum + (jdg.judge2 * 20)/10
            sum = sum + (jdg.judge3 * 20)/10
            sum = sum + (jdg.judge4 * 20)/10
            sum = sum + (jdg.judge5 * 20)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 2)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil) and (jdg.judge6 != nil))then
            sum = (jdg.judge1 * 10)/10    
            sum = sum + (jdg.judge2 * 15)/10
            sum = sum + (jdg.judge3 * 15)/10
            sum = sum + (jdg.judge4 * 15)/10
            sum = sum + (jdg.judge5 * 15)/10
            sum = sum + (jdg.judge6 * 30)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 3)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil))then
            sum = (jdg.judge1 * 10)/10    
            sum = sum + (jdg.judge2 * 20)/10
            sum = sum + (jdg.judge3 * 20)/10
            sum = sum + (jdg.judge4 * 20)/10
            sum = sum + (jdg.judge5 * 30)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 4)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil) and (jdg.judge6 != nil) and  (jdg.judge7 != nil))then
            sum = (jdg.judge1 * 20)/10    
            sum = sum + (jdg.judge2 * 10)/10
            sum = sum + (jdg.judge3 * 10)/10
            sum = sum + (jdg.judge4 * 15)/10
            sum = sum + (jdg.judge5 * 15)/10
            sum = sum + (jdg.judge6 * 15)/10
            sum = sum + (jdg.judge7 * 15)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
    end
    if(ans.year == 23)then
        if(ans.jirei == 1)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil))then
            sum = (jdg.judge1 * 20)/10    
            sum = sum + (jdg.judge2 * 20)/10
            sum = sum + (jdg.judge3 * 20)/10
            sum = sum + (jdg.judge4 * 20)/10
            sum = sum + (jdg.judge5 * 20)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 2)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil) and  (jdg.judge6 != nil))then
            sum = (jdg.judge1 * 10)/10    
            sum = sum + (jdg.judge2 * 15)/10
            sum = sum + (jdg.judge3 * 10)/10
            sum = sum + (jdg.judge4 * 10)/10
            sum = sum + (jdg.judge5 * 10)/10
            sum = sum + (jdg.judge6 * 20)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 3)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil))then
            sum = (jdg.judge1 * 20)/10    
            sum = sum + (jdg.judge2 * 20)/10
            sum = sum + (jdg.judge3 * 20)/10
            sum = sum + (jdg.judge4 * 20)/10
            sum = sum + (jdg.judge5 * 20)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 4)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil))then
            sum = (jdg.judge1 * 15)/10    
            sum = sum + (jdg.judge2 * 20)/10
            sum = sum + (jdg.judge3 * 15)/10
            sum = sum + (jdg.judge4 * 25)/10
            sum = sum + (jdg.judge5 * 25)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
    end
    if(ans.year == 22)then
        if(ans.jirei == 1)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil) and (jdg.judge6 != nil))then
            sum = (jdg.judge1 * 15)/10    
            sum = sum + (jdg.judge2 * 15)/10
            sum = sum + (jdg.judge3 * 15)/10
            sum = sum + (jdg.judge4 * 15)/10
            sum = sum + (jdg.judge5 * 20)/10
            sum = sum + (jdg.judge6 * 20)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 2)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil))then
            sum = (jdg.judge1 * 10)/10    
            sum = sum + (jdg.judge2 * 30)/10
            sum = sum + (jdg.judge3 * 20)/10
            sum = sum + (jdg.judge4 * 10)/10
            sum = sum + (jdg.judge5 * 30)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 3)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil))then
            sum = (jdg.judge1 * 20)/10    
            sum = sum + (jdg.judge2 * 20)/10
            sum = sum + (jdg.judge3 * 20)/10
            sum = sum + (jdg.judge4 * 20)/10
            sum = sum + (jdg.judge5 * 20)/10
            jdg.score = sum
            @@det = 1
          end    
        end
        if(ans.jirei == 4)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil) and (jdg.judge6 != nil))then
            sum = (jdg.judge1 * 40)/10    
            sum = sum + (jdg.judge2 * 15)/10
            sum = sum + (jdg.judge3 * 10)/10
            sum = sum + (jdg.judge4 * 10)/10
            sum = sum + (jdg.judge5 * 10)/10
            sum = sum + (jdg.judge6 * 15)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
    end
    if(ans.year == 21)then
        if(ans.jirei == 1)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil))then
            sum = (jdg.judge1 * 20)/10    
            sum = sum + (jdg.judge2 * 20)/10
            sum = sum + (jdg.judge3 * 20)/10
            sum = sum + (jdg.judge4 * 20)/10
            sum = sum + (jdg.judge5 * 20)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 2)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil))then
            sum = (jdg.judge1 * 20)/10    
            sum = sum + (jdg.judge2 * 10)/10
            sum = sum + (jdg.judge3 * 20)/10
            sum = sum + (jdg.judge4 * 20)/10
            sum = sum + (jdg.judge5 * 30)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 3)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil) and (jdg.judge6 != nil))then
            sum = (jdg.judge1 * 10)/10    
            sum = sum + (jdg.judge2 * 20)/10
            sum = sum + (jdg.judge3 * 20)/10
            sum = sum + (jdg.judge4 * 20)/10
            sum = sum + (jdg.judge5 * 20)/10
            sum = sum + (jdg.judge6 * 10)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 4)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil) and (jdg.judge6 != nil) and  (jdg.judge7 != nil))then
            sum = (jdg.judge1 * 40)/10    
            sum = sum + (jdg.judge2 * 10)/10
            sum = sum + (jdg.judge3 * 10)/10
            sum = sum + (jdg.judge4 * 10)/10
            sum = sum + (jdg.judge5 * 10)/10
            sum = sum + (jdg.judge6 * 10)/10
            sum = sum + (jdg.judge7 * 10)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
    end
    if(ans.year == 20)then
        if(ans.jirei == 1)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil))then
            sum = (jdg.judge1 * 20)/10    
            sum = sum + (jdg.judge2 * 20)/10
            sum = sum + (jdg.judge3 * 20)/10
            sum = sum + (jdg.judge4 * 20)/10
            sum = sum + (jdg.judge5 * 20)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 2)
          if((jdg.judge1 != nil) and (jdg.judge2 != nil) and (jdg.judge3 != nil) and (jdg.judge4 != nil) and (jdg.judge5 != nil) and (jdg.judge6 != nil))then
            sum = (jdg.judge1 * 10)/10    
            sum = sum + (jdg.judge2 * 20)/10
            sum = sum + (jdg.judge3 * 20)/10
            sum = sum + (jdg.judge4 * 10)/10
            sum = sum + (jdg.judge5 * 10)/10
            sum = sum + (jdg.judge6 * 30)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 3)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil))then
            sum = (jdg.judge1 * 20)/10    
            sum = sum + (jdg.judge2 * 15)/10
            sum = sum + (jdg.judge3 * 15)/10
            sum = sum + (jdg.judge4 * 25)/10
            sum = sum + (jdg.judge5 * 25)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 4)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil) and  (jdg.judge6 != nil) and (jdg.judge7 != nil) and  (jdg.judge8 != nil))then
            sum = (jdg.judge1 * 30)/10    
            sum = sum + (jdg.judge2 * 15)/10
            sum = sum + (jdg.judge3 * 15)/10
            sum = sum + (jdg.judge4 * 15)/10
            sum = sum + (jdg.judge5 * 10)/10
            sum = sum + (jdg.judge6 * 10)/10
            sum = sum + (jdg.judge7 * 10)/10
            sum = sum + (jdg.judge8 * 10)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
    end
    if(ans.year == 19)then
        if(ans.jirei == 1)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil) and (jdg.judge6 != nil) and  (jdg.judge7 != nil))then
            sum = (jdg.judge1 * 10)/10    
            sum = sum + (jdg.judge2 * 15)/10
            sum = sum + (jdg.judge3 * 15)/10
            sum = sum + (jdg.judge4 * 15)/10
            sum = sum + (jdg.judge5 * 15)/10
            sum = sum + (jdg.judge6 * 15)/10
            sum = sum + (jdg.judge7 * 15)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 2)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil) and (jdg.judge6 != nil) and  (jdg.judge7 != nil))then
            sum = (jdg.judge1 * 10)/10    
            sum = sum + (jdg.judge2 * 10)/10
            sum = sum + (jdg.judge3 * 30)/10
            sum = sum + (jdg.judge4 * 15)/10
            sum = sum + (jdg.judge5 * 15)/10
            sum = sum + (jdg.judge6 * 10)/10
            sum = sum + (jdg.judge7 * 10)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 3)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil))then
            sum = (jdg.judge1 * 20)/10    
            sum = sum + (jdg.judge2 * 20)/10
            sum = sum + (jdg.judge3 * 20)/10
            sum = sum + (jdg.judge4 * 20)/10
            sum = sum + (jdg.judge5 * 20)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 4)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil) and (jdg.judge6 != nil) and (jdg.judge7 != nil))then
            sum = (jdg.judge1 * 25)/10    
            sum = sum + (jdg.judge2 * 15)/10
            sum = sum + (jdg.judge3 * 10)/10
            sum = sum + (jdg.judge4 * 15)/10
            sum = sum + (jdg.judge5 * 10)/10
            sum = sum + (jdg.judge6 * 15)/10
            sum = sum + (jdg.judge7 * 10)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
    end
    if(ans.year == 18)then
        if(ans.jirei == 1)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil) and (jdg.judge6 != nil))then
            sum = (jdg.judge1 * 30)/10    
            sum = sum + (jdg.judge2 * 15)/10
            sum = sum + (jdg.judge3 * 15)/10
            sum = sum + (jdg.judge4 * 15)/10
            sum = sum + (jdg.judge5 * 15)/10
            sum = sum + (jdg.judge6 * 10)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 2)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil))then
            sum = (jdg.judge1 * 20)/10    
            sum = sum + (jdg.judge2 * 15)/10
            sum = sum + (jdg.judge3 * 30)/10
            sum = sum + (jdg.judge4 * 15)/10
            sum = sum + (jdg.judge5 * 20)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 3)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil))then
            sum = (jdg.judge1 * 10)/10    
            sum = sum + (jdg.judge2 * 25)/10
            sum = sum + (jdg.judge3 * 25)/10
            sum = sum + (jdg.judge4 * 20)/10
            sum = sum + (jdg.judge5 * 20)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
        if(ans.jirei == 4)
          if((jdg.judge1 != nil) and  (jdg.judge2 != nil) and  (jdg.judge3 != nil) and (jdg.judge4 != nil) and  (jdg.judge5 != nil) and (jdg.judge6 != nil) and (jdg.judge7 != nil) and (jdg.judge8 != nil))then
            sum = (jdg.judge1 * 30)/10    
            sum = sum + (jdg.judge2 * 10)/10
            sum = sum + (jdg.judge3 * 10)/10
            sum = sum + (jdg.judge4 * 20)/10
            sum = sum + (jdg.judge5 * 5)/10
            sum = sum + (jdg.judge6 * 10)/10
            sum = sum + (jdg.judge7 * 5)/10
            sum = sum + (jdg.judge8 * 10)/10
            jdg.score = sum
            @@det = 1            
          end    
        end
    end
 
    if @@det == 1 then
      puts "###### comments create save #######"
      puts @@det
      puts "###################################"        
      jdg.save
      redirect_to  answer_comments_path(jdg.answer_id)
    else
      puts "###### comments create No save #######"
      puts @@det
      puts "######################################"            
      redirect_to  top_path  
    end
    
  end
  
  def new
    puts "###### comments new #######"
    puts params[:id]
    puts "###########################"
    @answer = Answer.find(params[:id])
    @@aid = @answer.id
    @comment = Comment.new
    @comment.answer_id = @answer.id
    @@aa = params[:id]
  
  end
  
  private
  def comment_params
    params.require(:comment).permit(:id,:answer_id,:user_id,:judge1,:ans1,:judge2,:ans2,:judge3,:ans3,:judge4,:ans4,:judge5,:ans5,:judge6,:ans6,:judge7,:ans7,:judge8,:ans8,:judge9,:ans9,:judge10,:ans10 )
  end
  
  
  
  
end





