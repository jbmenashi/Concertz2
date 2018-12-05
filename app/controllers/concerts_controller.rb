class ConcertsController < ApplicationController

  def index
    @concerts = Concert.search(params[:artist])
  end

  def show
    @concert = Concert.find(params[:id])
  end


  def concert_params
    params.require(:concert).permit(:location, :artist, :genre, :venue)
  end


end
