class Song
  @@all = []
  
  attr_accessor :artist, :name
    
  def initialize(song)
    @name = song
    @@all << self
  end
  
  def self.all
    @all
  end

  
end