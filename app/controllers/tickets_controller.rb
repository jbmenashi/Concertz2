class TicketsController < ApplicationController

  def show
    @ticket = Ticket.find(params[:id])
    @user = session_user
  end

  def create
    @ticket = Ticket.create(user_id: session_user.id, concert_id: params[:concert_id])
    redirect_to ticket_path(@ticket)
  end

end
