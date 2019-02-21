class Artist
  def initialize(name)
    @name = name
  end
  attr_accessor :name
  @@songs = []
  def songs
    @@songs
  end
  def add_song(song)
    song.artist = self
    @@songs << song
  end
  def add_song_by_name(songName)
    songName = Song.new(songName)
    add_song(songName)
  end
  def self.song_count
    @@songs.length
  end
end
