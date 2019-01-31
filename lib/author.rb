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
    post.author_name = self
    @@postcount += 1
  end
  
  def add_post_by_title(title)
    newpost = Post.new(title)
    newpost.author = self
    newpost.author_name = self.name
    @posts << newpost
    @@postcount += 1
  end
  
  def self.post_count
    @@postcount
  end
  
  
end