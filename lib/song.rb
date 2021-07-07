require 'pry'
class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name

    if artist == nil
      nil
    else
      artist.name
    end
  end

end

# ava_maria = Song.new("Ava Maria")
#
# ava_maria.all
# ava_maria.artist_name
