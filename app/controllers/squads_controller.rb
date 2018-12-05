class SquadsController < ApplicationController
  before_action :find_squad, only: [:show, :edit, :update]

  def show

  end

  def new
    @squad = Squad.new
  end

  def create
    @squad = Squad.new(squad_params)
    if @squad.save
      redirect_to squad
    else
      flash[:errors] = @squad.errors.full_messages
      redirect_to new_squad_path
    end
  end

  def edit

  end

  def update
    if @squad.update(squad_params)
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

  def squad_params
    params.require(:squad).permit(:name, :size)
  end

end
