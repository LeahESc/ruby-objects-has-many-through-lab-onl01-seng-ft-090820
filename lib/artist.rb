class Artist 
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @@all << self 
  
  def self.all
    @@all 
  end 
  
  def new_song(name, genre)
    song = Song.new(name, genre)
    song.artist = self 
    
  def song 
    Song.all.select {|song| song.artist == self} 
  end
  
  def genres 
    self.songs.map do |song|
      song.genre
    end
  end 
  
  
end 