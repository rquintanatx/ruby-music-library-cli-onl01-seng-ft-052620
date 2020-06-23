require 'pry'

class Song 
  attr_accessor :name
  attr_reader :artist
  @@all = []
  
  def initialize(name, artist = nil)
    @name = name 
    if artist != nil 
      @artist = artist 
    end 
  end 
  
  def artist= (artist)
    
  end 
  
  def save
    @@all << self
  end
  
  def self.create(name)
    song = Song.new(name)
    song.save 
    song
  end 
  
  def self.all 
    @@all 
  end
  
  def self.destroy_all
    @@all.clear
  end 

end 

class Artist  
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs = []
  end 
  
  def add_song(song)
    if song.artist == nil   
      song.artist = self 
    end 
    if @songs.none? {|a_song| a_song == song}
      @songs << song
    end 
  end 
  
  def songs
    @songs
  end 
  
  def save
    @@all << self
  end
  
  def self.create(name)
    artist = Artist.new(name)
    artist.save 
    artist
  end 
  
  def self.all 
    @@all 
  end
  
  def self.destroy_all
    @@all.clear
  end 

end 

class Genre
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
  end 
  
  def save
    @@all << self
  end
  
  def self.create(name)
    genre = Genre.new(name)
    genre.save 
    genre
  end 
  
  def self.all 
    @@all 
  end
  
  def self.destroy_all
    @@all.clear
  end 

end 