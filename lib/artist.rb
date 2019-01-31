class Artist
  attr_accessor :name, :songs
  @@count = 0
  
  def initialize(name)
    @name = name
    @songs = []
    
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    @@count += 1
  end
  
  def add_song_by_name(song)
   newsong = Song.new(song)
   newsong.artist = self
   @songs << newsong
  end
  
  def self.song_count
   @@count
  end
  
end