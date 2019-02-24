class Song

  attr_reader :name
  attr_accessor :artist

  @@all = []

   def initialize(song_name)
     @name = song_name
     @@all << self
   end

   def self.all
     @@all
   end

   def artist_name
     self.artist ? self.artist.name : self.artist
   end

end
