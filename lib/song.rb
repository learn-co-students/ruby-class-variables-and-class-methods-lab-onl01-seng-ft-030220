class Song
@@count = 0
@@artists = []
@@genres = []

attr_accessor :name, :artist, :genre

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@artists << artist
  @@genres << genre
end

def self.count
  @@count
end

  def self.artists
    uniq_artists = []
    @@artists.each do |artist|
      if !uniq_artists.include?(artist)
        uniq_artists << artist
      end
    end
    uniq_artists
  end

  def self.genres
    uniq_genres = []
    @@genres.each do |genre|
      if !uniq_genres.include?(genre)
        uniq_genres << genre
      end
    end
    uniq_genres
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
