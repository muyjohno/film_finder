class HomeController < ApplicationController
  def show
  end

  def cinema
    lookup = CinemaService::Lookup.new(params[:postcode])
    @cinema = lookup.closest
  end

  def showings
    showings = CinemaService::Showings.new(params[:cinema_id])
    @films = showings.get
  end
end
