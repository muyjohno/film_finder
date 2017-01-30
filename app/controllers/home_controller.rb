class HomeController < ApplicationController
  def show
  end

  def cinema
    lookup = CinemaService::Lookup.new(params[:postcode])
    @cinema = lookup.closest
  end
end
