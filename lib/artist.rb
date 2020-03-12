class Artist 
attr_accessor :name
@@all = []
  def initialize(name)
    @name=name 
  end
  def songs
    Songs.all.select do |artist_object|
      artist_object == self.name 
    end
  end
end