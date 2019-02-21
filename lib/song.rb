class Song
  def initialize(name)
    @name = name
    @@all << self
  end
  attr_accessor :name, :artist
  @@all = []
  def self.all
    @@all
  end
  def artist_name
    self.artist ? self.artist.name : self.artist
  end
end
