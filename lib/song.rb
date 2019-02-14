class Song
  @@artists = []
  @@genres = []
  @@count = 0         #total number of songs
  @@artist_count = Hash.new {0}
  @@genre_count = Hash.new {0}

  attr_reader :name,:artist,:genre

  def initialize name, artist, genre
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@artists << @artist #if !(@@artists.include?(@artist))
    @@genres << @genre #if !(@@genres.include?(@genre))

    if @@artist_count.has_key? artist
      @@artist_count[artist] += 1
    else
      @@artist_count[artist] = 1
    end

    if @@genre_count.has_key? genre
      @@genre_count[genre] += 1
    else
      @@genre_count[genre] = 1
    end
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.artist_count
    @@artist_count
  end

  def self.genre_count
    @@genre_count
  end

end
