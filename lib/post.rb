class Post 
  attr_reader :title,
  @@all = []
  def initialize(title, author=nil)
    @title = title
    @author = author
    Post.all << self
  end 
  def self.all
    @@all
  end
end