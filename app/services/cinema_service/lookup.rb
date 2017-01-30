module CinemaService
  class Lookup < Base
    def initialize(postcode)
      @postcode = postcode
    end

    def closest
      Cinema.new(lookup)
    end

    private

    def lookup
      request("/cinemas/find/#{postcode}").first
    end

    def postcode
      @postcode.delete(' ')
    end
  end
end
