class CommunicationsController < ApplicationController
  
  @@id = 0
  
  def index
    @com = Communication.select(:title).distinct
  end

  def new
    @communications = Communication.new
    @communications.user_id = current_user.id

  end
  
  def create
    # ストロングパラメーターを使用
    @lists = Communication.new(communication_params)
    @lists.save
    # トップ画面へリダイレクト
    redirect_to  title_communications_path(@@id)
  end
  
  def show
     @communications = Communication.new
     @communications.title_id = params[:title_id]
     @@id = params[:title_id]
     @titles = Title.find(params[:title_id])
     @lists = Communication.where(title_id: params[:title_id])
     
  end
  
  private
  def communication_params
    params.require(:communication).permit(:id, :title_id, :title, :comment )
  end
  
  
  
  
end
