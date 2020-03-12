class Author
  attr_accessor :name
  def initialize(name)
    @name=name
  end
  
  def posts 
    Post.all.select do |post_object| 
    post_object.author == self
    end
  end
  
  def add_post(post)
    post.author = self
  end
  
  def add_post_by_title(post_title)
    post=Post.new(post_title, self)
  end
end