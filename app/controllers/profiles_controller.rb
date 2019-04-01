class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
  end

  def new
    @profiles = Profile.new  
      
  end

  def show
  end

  def edit
  end
  
  def create
    # ストロングパラメーターを使用
    ans = Answer.new(answer_params)
    ans.user_id = current_user.id
    # DBへ保存する
    ans.save
    # トップ画面へリダイレクト
    redirect_to   answer_path(ans.id)
      
  end
  
  def update
      
  end
  
  def destroy
      
  end
  
  private
  def profile_params
       params.require(:profile).permit(:id, :user_id, :capa, :exep, :most1, :most2, :most3, :most4, :ans5, :ans6 )

  end

end
