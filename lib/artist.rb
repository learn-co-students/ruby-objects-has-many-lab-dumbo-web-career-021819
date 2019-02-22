require'pry'

class Artist
@@count = 0
attr_accessor :name, :songs, :artist, :count


def initialize(name)
	@name = name
	@songs = []
	

end

def add_song(song_title)
	 song_title.artist = self
	 songs << song_title
	@@count += 1
end

def add_song_by_name(songName)
	add_song(Song.new(songName))
end

def self.song_count
	@@count
end

end
