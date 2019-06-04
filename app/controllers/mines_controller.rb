class MinesController < ApplicationController
  
  def index
    @usr = current_user.name
    @answers = Answer.where(user_id: current_user.id)
    @profiles = Profile.where(user_id: current_user.id).last
    @drills = Drill.where(user_id: current_user.id)
    @titles = Title.where(user_id: current_user.id)
  end
  
  
end
