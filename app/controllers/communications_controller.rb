class CommunicationsController < ApplicationController

  def index
    @com = Communication.select(:title).distinct
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
    redirect_to   communications_show_path(list.title)
  end
  
  def show
     @dlists = Communication.where(params[:title])  
     @communications = Communication.new
     @communications.user_id = current_user.id
     @title = params[:title]
  end
  
  private
  def communication_params
    params.require(:communication).permit(:id, :user_id, :title, :comment )
  end
  
  
  
  
end
