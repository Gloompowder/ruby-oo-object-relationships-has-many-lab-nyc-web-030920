class Artist 
attr_accessor :name

  def initialize(name)
    @name=name 
  end
  
  def songs
    Song.all.select do |song_object|
      song_object.artist == self
    end
  end
  
end