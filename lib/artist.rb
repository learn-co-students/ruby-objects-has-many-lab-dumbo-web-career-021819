class Artist
  def initialize(name)
    @name = name
  end
  attr_accessor :name
  SONGS = []
  def songs
    SONGS
  end
  def add_song(song)
    song.artist = self
    SONGS << song
  end
  def add_song_by_name(songName)
    songName = Song.new(songName)
    add_song(songName)
  end
  def self.song_count
    SONGS.length
  end
end
