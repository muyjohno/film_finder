module CinemaService
  class Showings
    attr_reader :cinema_id

    def initialize(cinema_id)
      @cinema_id = cinema_id
      @conn = Faraday.new(url: 'http://moviesapi.herokuapp.com')
    end

    def get
      response = @conn.get "/cinemas/#{cinema_id}/showings"
      JSON.parse(response.body).map do |film_data|
        Film.new(film_data)
      end
    end
  end
end
