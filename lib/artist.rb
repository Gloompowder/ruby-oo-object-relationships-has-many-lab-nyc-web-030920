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
    song.artist  = self
  end
  def add_song_by_name(song_name)
    song = Song.new(song_name, self)
  end
  def self.song_count 
    
    # if post.artist != nil 
    Song.all.count 
    # end
  end
end