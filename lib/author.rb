class Author
  
  attr_accessor :name, :posts
  
  @@postcount = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def name=(name)
    @name = name
  end
  
  def name
    @name
  end
  
  def add_post(post)
    
    post.author = self
    post.author_name = @name
    @posts << post
    @@postcount += 1
  end
  
  def add_post_by_title(title)
    newpost = Post.new(title)
    newpost.author = self
    newpost.author_name = @name
    @posts << newpost
    @@postcount += 1
  end
  
  def self.post_count
    @@postcount
  end
  
  
end