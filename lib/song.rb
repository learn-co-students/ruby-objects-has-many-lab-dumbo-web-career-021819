require 'pry'
class Song
  attr_accessor :artist
  attr_reader :name


  @@all = []

  def initialize(name)
    @name=name
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
     # binding.pry
    self.artist ? self.artist.name : nil
  end

end



# An individual song will need to have a reference to the artist it belongs to, meaning it will need to have an artist=() and artist method. And an individual artist will need a method that returns a collection of all the songs that belong to that artist. Which means the song class will need to have a class variable that holds all instances of every song that's been created in an array. To access that array, the song class will also need a class method that returns the class variable holding those instances.
