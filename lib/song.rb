class Song
  @@all = []
  
  attr_accessor :artist, :name, :artist_name
    
  def initialize(song)
    @name = song
    @@all << self
  end
  
  def name=(name)
    @name = name
  end
  
  def name
    @name
  end
  
  def self.all
    @@all
  end

  
end