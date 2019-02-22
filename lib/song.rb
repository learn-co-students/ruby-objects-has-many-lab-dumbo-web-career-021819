class Song
  attr_accessor :artist
  @@all = []

  def initialize(song)
    @artist = artist
    @song = song
    @@all << self
  end

  def self.all
    @@all
  end

  def name
    @song
  end

  def artist_name
    if self.artist == nil
      return nil
    else
      self.artist.name
    end
  end

end
