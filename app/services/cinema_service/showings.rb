module CinemaService
  class Showings < Base
    def initialize(cinema_id)
      @cinema_id = cinema_id
    end

    def get
      showings.map { |data| Film.new(data) }
    end

    private

    def showings
      request("/cinemas/#{@cinema_id}/showings")
    end
  end
end
