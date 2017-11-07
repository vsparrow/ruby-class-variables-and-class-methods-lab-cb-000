class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @name=name
    @artist=artist
    @genre=genre
    @@count+=1
    @@genres << genre
    @@artists << artist
  end #initialize
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
    Hash[*@@genres.group_by{ |v| v }.flat_map{ |k, v| [k, v.size] }]
  end
  def self.artist_count
    Hash[*@@artists.group_by{|v| v}.flat_map{ |k, v| [k, v.size] }]
  end

end #class


# require 'pry'
#
# class Song
#   attr_reader :name, :artist, :genre
#   @@count = 0
#   @@artists = []
#   @@genres = []
#   def initialize(name,artist,genre)
#     @name=name
#     @artist=artist
#     @genre=genre
#
#     @@count += 1
#     @@artists << @artist
#     @@genres << @genre
#     # puts "#{@@artists}"
#     # puts "#{@artist}"
#     # if !@@artists.include?(@artist)
#     #   @@artists << @artist
#     # end # include
#     # puts " AFTER:: #{@@artists}"
#   end #initialize
#
#   def self.count
#     return @@count
#   end # count
#
#   def self.artists
#     # @@artists.collect |artist|
#     @@artists.uniq()
#     # end
#   end
#
#   def self.genres
#     @@genres.uniq()
#   end
#
#   def self.genre_count
#     genre_count_hash = {}
#     # genre_count_hash = Hash[@@genres.collect { |v| [v] }]
#
#     @@genres.each do |genre|
#       puts genre
#       !genre_count_hash[genre] ? genre_count_hash[genre] = 1: genre_count_hash[genre] +=1
#     end #.each
#     puts "****************#{genre_count_hash}"
#     genre_count_hash
#   end #genre_count
#
#   def self.artist_count
#     artist_count_hash = Hash.new()
#     @@artists.each do |artist|
#       !artist_count_hash[artist] ? artist_count_hash[artist] =1 : artist_count_hash[artist] +=1
#     end #each
#     artist_count_hash
#   end #self.artist_count
# end # class
#
# # s=Song.new("a","b","c")
# # binding.pry
