class Post
  attr_accessor :author, :title, :author_name
  @@all = []
  def initialize(title)
    @title = title
    @@all << self
  end
  
  def author=(author)
    @author = author
  end
  
  def author
    @author
  end
  
  def self.all
    @@all
  end
  
end