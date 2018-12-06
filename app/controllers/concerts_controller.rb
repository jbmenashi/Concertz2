class ConcertsController < ApplicationController
  layout 'concert_index'

  def index
    if params[:artist]
      @concerts = Concert.search(params[:artist])
      if @concerts.length > 0
        @concerts
      elsif flash[:error]
        @concerts = []
      else
        flash[:error] = "No results for search"
        redirect_to concerts_path
      end
    else
      @concerts = []
    end
  end

  def show
    @concert = Concert.find(params[:id])
  end




end
