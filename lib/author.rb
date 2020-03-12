class Author
  attr_accessor :name
  def initialize(name)
    @name=name
  end
  
  def posts 
    Post.all.select |post_object| 
    post_object.author == self
  end

end