class Author
  
  attr_accessor :name, :posts
  
  @@postcount = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
    @posts << post
    post.author = self
    @@postcount += 1
  end
  
  def add_post_by_title(title)
    newpost = Post.new(title)
    newpost.author = self
    @posts << newpost
    @@postcount += 1
  end
  
  def self.post_count
    @@post_count
  end
  
  
end