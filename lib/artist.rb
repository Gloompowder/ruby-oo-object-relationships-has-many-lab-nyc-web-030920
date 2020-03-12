class Artist 
attr_accessor :name
@@all = []
  def initialize(name)
    @name=name 
  end
  def songs
    Songs.all.select do |song_object|
      song_object.artist == self
    end
  end
end