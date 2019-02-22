class Artist

  attr_accessor :name
  attr_reader :songs


  def initialize(name)
    @name = name
    @songs = []
  end

  def new(artist)
    @name
  end

  def add_song(song)
    song.artist = self
    @songs << song
  end

  def add_song_by_name(song_name)
    song = Song.new(song_name)
    add_song(song)
  end

  def self.song_count
    Song.all.size
  end

end
