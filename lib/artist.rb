class Artist

  attr_reader :name, :songs

  def initialize(artist_name)
    @name = artist_name
    @songs = []
  end

  def add_song(song_name)
    @songs << song_name
    song_name.artist = self
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    add_song(new_song)
  end

def self.song_count
  Song.all.length
end

end
