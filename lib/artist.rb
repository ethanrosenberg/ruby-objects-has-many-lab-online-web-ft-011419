class Artist
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
  end
  
  def add_song_by_name(song)
   newsong = Song.new(song)
   newsong.artist = self
   @songs << newsong
  end
  
  def self.song_count
   self.@songs.size
  end
  
end