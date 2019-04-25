require 'pry'

class Song

  attr_accessor :name, :artist, :genre


@@count = 0

@@genres = []
@@artists = []
def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@count += 1
  @@genres << genre
  @@artists << artist
end

def self.count
  @@count
end

def self.genres
  @@genres
end

def self.artist
 @@artists
end

def self.genre_count
  genre_count = {}
  @@genres.group_by{ |v| v }.map{ |k, v| [k, v.size] }

end
#binding.pry
end
