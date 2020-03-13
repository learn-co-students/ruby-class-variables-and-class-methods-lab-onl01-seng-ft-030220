class Song 
  @@count = 0 
  @@artists = []
  @@genres = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre 
    @@genres << genre
  end
  
  def genre
    @genre
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    unique_artists = []
    @@artists.each do |artist|
      if !unique_artists.include?(artist)
        unique_artists << artist
      end
    end
    return unique_artists
  end
  
  def self.genres 
    unique_genres = []
    @@genres.each do |genre|
      if !unique_genres.include?(genre)
        unique_genres << genre
      end
    end
    return unique_genres
  end
  
  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if !genre_hash.has_key?(genre)
        genre_hash[genre] = 1 
      else
        genre_hash[genre] += 1
      end
    end
    return genre_hash
  end
  
  def self.artist_count
    artists_hash = {}
    @@artists.each do |artist|
      if !artists_hash.has_key?(artist)
        artists_hash[artist] = 1 
      else
        artists_hash[artist] += 1
      end
    end
    return artists_hash
  end
  
  
end