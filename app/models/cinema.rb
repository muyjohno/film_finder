class Cinema
  attr_reader :name, :address, :id

  def initialize(data)
    @name = data['name']
    @address = data['address']
    @id = data['venue_id']
  end
end
