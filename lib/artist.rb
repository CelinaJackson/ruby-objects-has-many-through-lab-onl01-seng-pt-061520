def Artist
  attr_accessor :name

  @@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end

def new_song(song, genre)
  Song.new(name, self, genre)
end

def songs
  @songs
end

def genres
  self.songs.collect {|song| song.genre}
end

end
