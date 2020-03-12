class Artist 
attr_accessor :name
@@all = []
  def initialize(name)
    @name=name 
  end
  def songs
    Songs.all.select do |artist_object|
      artist_object.artist == self
    end
  end
end