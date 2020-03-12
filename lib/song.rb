require "pry"

class Song

  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}


  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.artists=
    @artists = artists
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres=
    @genre = genres
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genre_count = {}
  end

  def self.genre_count
    g_count = {}
    @@genres.each do | genre |
      if g_count[genre]
        g_count[genre] += 1
      else
        g_count[genre] = 1
      end
    end
    g_count
  end

  def self.artist_count
    a_count = {}
    @@artists.each do | artist |
      if a_count[artist]
        a_count[artist] += 1
      else
        a_count[artist] = 1
      end
    end
    a_count
  end
end
