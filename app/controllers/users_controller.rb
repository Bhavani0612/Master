class UsersController < ApplicationController


  def index
    @users = User.all
  end

  # def search_players
  #   if @user = user.all.find{|user| user.name.include?(params[:search])}
  #     redirect_to user_path(@user)
  #   end
  # end

  def show
    @user = User.find(params[:id])
  end

  def request

  end
end

