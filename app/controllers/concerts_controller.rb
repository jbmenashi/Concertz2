class ConcertsController < ApplicationController

  def index
    @concerts = Concert.search(params[:artist])
  end

  def show
    @concert = Concert.find(params[:id])
  end




end
