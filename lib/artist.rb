class Artist 
attr_accessor :name
@@all = []
  def initialize(name)
    @name=name 
  end
  def songs 
    Song.all.select do |song_object|
      song_object.author == self
  end
end