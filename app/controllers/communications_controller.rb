class CommunicationsController < ApplicationController

  def index
    @com = Communication.all
 
  end

  def new
    @communications = Communication.new
    @communications.user_id = current_user.id

  end
  
  def create
    # ストロングパラメーターを使用
    list = Communication.new(communication_params)
    list.user_id = current_user.id
    list.save
    # トップ画面へリダイレクト
    redirect_to  communications_index_path
  end
  
  private
  def communication_params
    params.require(:communication).permit(:id, :user_id, :title, :comment )
  end
  
  
  
  
end
