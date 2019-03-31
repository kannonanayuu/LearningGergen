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
      
  end
  
  def update
      
  end
  
  def destroy
      
  end
end
