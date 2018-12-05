class UserSquadsController < ApplicationController

  def new
    @user_squad = UserSquad.new
  end

  def create
    @user_squad = UserSquad.new
    if @user_squad.save
      redirect_to squad_path(@squad)
    else
      redirect_to new_user_squad_path
    end
  end

  
end
