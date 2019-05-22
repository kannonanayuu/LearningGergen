class DrillsController < ApplicationController
 
  def index
    @drills = Drill.all  
      
  end

  def edit
    @dll = Drill.find(params[:id])  
  end

  def update
    dll = Drill.find(params[:id])
    dll.update(drill_params)
    redirect_to drills_path  
  end


  def show
     @dll = Drill.find(params[:id])  
      
      
  end

  def new
    @drills = Drill.new
    @id = params[:id]
    @@select = @id  
      
      
  end
  
  def create
    # ストロングパラメーターを使用
    dll = Drill.new(drill_params)
    dll.user_id = current_user.id
    
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
