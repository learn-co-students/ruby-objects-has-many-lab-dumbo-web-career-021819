require 'pry'

class Artist

  attr_reader :name
  attr_accessor :songs


  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs.push(song)
    song.artist = self
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    @songs.push(new_song)
    new_song.artist = self
  end

  def self.song_count
    Song.all.length
  end

end
