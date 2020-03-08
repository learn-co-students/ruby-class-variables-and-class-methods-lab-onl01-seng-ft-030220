require 'pry'

class Song 
  # Class variables 
  @@artists = []
  @@genres = []
  @@count = 0
  
  # Instance variables 
  attr_accessor :name, :artist, :genre 
  
  def initialize(name, artist, genre)
    @@count += 1 
    @@genres << genre 
    @@artists << artist 
    @name = name 
    @artist = artist 
    @genre = genre 
  end
  
  def self.count 
    @@count 
  end 
  
  def self.genres 
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end

  def self.genre_count 
    genre_hash = {}
    @@genres.each{|genre|
      if genre_hash.key?(genre) == false 
        genre_hash.store(genre, 1)
      else
        genre_hash[genre] += 1 
      end
    }
    genre_hash 
  end
  
  def self.artist_count
    artist_hash = {}
    @@artists.each{|artist|
      if artist_hash.key?(artist) == false 
        artist_hash.store(artist, 1)
      else
        artist_hash[artist] += 1 
      end
    }
    artist_hash
  end
end 

song1 = Song.new("Ziggy Stardust", "David Bowie", "Glam Rock")
song2 = Song.new("Cosmic Dancer", "T-Rex", "Glam Rock")
song3 = Song.new("Elastic Heart", "Sia", "Pop")
song4 = Song.new("I'm Waiting For The Man", "Velvet Undergroud", "Art Rock")
song5 = Song.new("Heroes", "David Bowie", "Art Rock")
