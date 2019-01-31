class Song
  @@all = []
  
  attr_accessor :artist, :name, :artist_name
    
  def initialize(song)
    @name = song
    @@all << self
  end
  
  def artist=(artist)
    @artist = artist
    @artist_name = artist.artist
  end
  
  def artist
    @artist
  end
  
  def self.all
    @@all
  end

  
end