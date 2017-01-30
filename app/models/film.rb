class Film
  attr_reader :title, :times

  def initialize(data)
    @title = data['title']
    @times = data['time']
  end
end
