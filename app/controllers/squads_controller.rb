class SquadsController < ApplicationController
  before_action :find_squad

  def show

  end

  def edit

  end

  def update
    if @squad.update
      redirect_to @squad
    else
      flash[:errors] = @squad.errors.full_messages
      redirect_to edit_squad_path
    end
  end

  private

  def find_squad
    @squad = Squad.find(params[:id])
  end

end
