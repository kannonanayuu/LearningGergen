class TitlesController < ApplicationController

  def index
    @titles = Title.all
    
  end

  def new
    @titles = title.new
    @titles.user_id = current_user.id

  end
  
  def create
    # ストロングパラメーターを使用
    list = Title.new(title_params)
    list.user_id = current_user.id
    list.save
    # トップ画面へリダイレクト
    #redirect_to   communications_show_path(list.title)
  end
  
  def show
     @dlists = Title.where(params[:title])
     @communications = Communication.new
     @communications.user_id = current_user.id
     @title = params[:title]
  end
  
  private
  def title_params
    params.require(:title).permit(:id, :user_id, :title, :comment )
  end
  
  



  
end
