require 'pry'

class Song

  attr_accessor :name, :artist, :genre
  #global
  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(song_name,artist,genre)
    #instance variables
    @name = song_name
    @artist = artist
    @genre = genre
    #class variables
    @@count += 1
    #Adds artists to the artist array
    @@artists << artist
    #adds genre to the genres array
    @@genres << genre
  end
  #the methods that we can use to create array, manipulate objects
  def self.count 
    @@count
  end

  def self.artists
    #@@. uniq makes sure that it only captures the names once and deletes the duplicates.
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    #I think this creates a new hash and then iterates through each
    #element in the hash
    #then returns the genre_count
    genre_count = Hash.new(0)
    @@genres.each {|genre| genre_count[genre] += 1}
    genre_count
  end

  def self.artist_count
    artist_count = Hash.new(0)
    @@artists.each {|artist| artist_count[artist] += 1}
    artist_count
  end

end 


#another way of doing the .genre_count and artist_count
 # def self.genre_count
  #   genre_count = {}
  #   @@genres.each do |genre|
  #     if genre_count[genre]
  #       genre_count[genre] += 1 
  #     else
  #       genre_count[genre] = 1
  #     end
  #   end
  #   genre_count
  # end

  # def self.artist_count
  #   artist_count = {}
  #   @@artists.each do |artist|
  #     if artist_count[artist] #if the artist is already in the hash
  #       artist_count[artist] += 1
  #     else
  #       artist_count[artist] = 1
  #     end
  #   end
  #   artist_count
  # end