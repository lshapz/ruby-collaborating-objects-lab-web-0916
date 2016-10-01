class MP3Importer

attr_accessor :files
attr_reader :path
attr_writer

def initialize(path)

@path = path 
end 


def files
    @files ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/", "") }

 # @folder_array = Dir.entries(path)
  
 #  @folder_array.select {|y| y[-4..-1] == ".mp3"}
end 

def import 
  files.each{|x|
    Song.new_by_filename(x)}
  end 

# @@all = {}

  end 
