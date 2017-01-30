module CinemaService
  class Base
    protected

    def request(endpoint)
      JSON.parse(conn.get(endpoint).body)
    end

    private

    def conn
      @conn ||= Faraday.new(url: 'http://moviesapi.herokuapp.com')
    end
  end
end
