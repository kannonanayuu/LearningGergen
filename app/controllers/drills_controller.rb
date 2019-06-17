class DrillsController < ApplicationController
 
  def index
    puts "==== drills index ===="    
    @drills = Drill.all  
      
  end

  def edit
    @dll = Drill.find(params[:id])  
  end

  def update
    puts "==== drills update ===="  
    dll = Drill.find(params[:id])
    dll.update(drill_params)
    redirect_to drills_path  
  end


  def show
     puts "==== drills show ===="   
     @dll = Drill.find(params[:id])  
      
      
  end

  def new
    puts "==== drills new ===="    
    @drills = Drill.new
    @id = params[:id]
    @@select = @id  
      
      
  end
  
  def create
    puts "==== drills create ===="    
    dll = Drill.new(drill_params)
    dll.user_id = current_user.id
    
    if @@select == "131" then
      dll.jirei = 131
    elsif @@select == "132" then
      dll.jirei = 132       
    elsif @@select == "133" then
      dll.jirei = 133      
    elsif @@select == "141" then
      dll.jirei = 141      
    elsif @@select == "142" then
      dll.jirei = 142
    elsif @@select == "211" then
      dll.jirei = 211
    elsif @@select == "212" then
      dll.jirei = 212
    elsif @@select == "213" then
      dll.jirei = 213
    elsif @@select == "214" then
      dll.jirei = 214
    elsif @@select == "215" then
      dll.jirei = 215
    elsif @@select == "216" then
      dll.jirei = 216 
    elsif @@select == "221" then
      dll.jirei = 221
    elsif @@select == "222" then
      dll.jirei = 222
    elsif @@select == "223" then
      dll.jirei = 223
    elsif @@select == "226" then
      dll.jirei = 226
    elsif @@select == "227" then
      dll.jirei = 227
    elsif @@select == "232" then
      dll.jirei = 232
    elsif @@select == "233" then
      dll.jirei = 233
    end    
    
    
    
    
    # DBへ保存する
    dll.save
    # トップ画面へリダイレクト
    redirect_to   drill_path(dll.id)

  end
  
  
  private
  
  def drill_params
    params.require(:drill).permit(:id, :user_id, :strt, :s, :w, :o, :t, :j1, :j2, :j3, :j4 )
  end

end
