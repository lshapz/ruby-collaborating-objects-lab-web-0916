# require 'Pry'
class Song

attr_accessor :name, :artist
attr_reader
attr_writer

def initialize(name)
  @name = name
end 


def self.new_by_filename(file_name)

  artist, song = file_name.split(" - ")
  z = self.new(song)
  z.artist_name = artist
  z 
end 


  def artist_name=(name)
    # if (self.artist.nil?)
    #   self.artist = Artist.new(name)
    # else
    #   self.artist.name = name 
    # end


    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)

  end

# puts "songs!"
end 

