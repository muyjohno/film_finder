module CinemaService
  class Lookup
    def initialize(postcode)
      @postcode = postcode
      @conn = Faraday.new(url: 'http://moviesapi.herokuapp.com')
    end

    def closest
      Cinema.new(find.first)
    end

    private

    def find
      response = @conn.get "/cinemas/find/#{postcode}"
      JSON.parse(response.body)
    end

    def postcode
      @postcode.delete(' ')
    end
  end
end
