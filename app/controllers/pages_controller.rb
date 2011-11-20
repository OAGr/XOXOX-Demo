class PagesController < ApplicationController
  
  def home
    if signed_in?
      redirect_to(user_root_path)
    end
  end
  
  def user_page

    @user = current_user
    
  end
  
end
