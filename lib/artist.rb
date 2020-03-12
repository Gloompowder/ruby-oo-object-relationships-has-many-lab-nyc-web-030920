class Artist 
attr_accessor :name, :song

  def initialize(name)
    @name=name 
  end
  
  def songs
    Song.all.select do |song_object|
      song_object.artist == self
    end
  end
  def add_song(song)
    song=Artist.song
  end
end