class UsersController < ApplicationController

def show
  @user = User.find(params[:id])
  @offer = @user.offers.build
end

def details
end

def create_profile
  @user = current_user 
end

def redirect
  @user = current_user
end

def regististrations
  @a = "hello there"
end

end