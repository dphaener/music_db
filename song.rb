require 'yaml'

class Song
  
  attr_accessor :title, :artist, :album, :track, :notes
  
  def to_s
    output = "Title: #{@artist}\n"
    output << "Artist: #{@artist}\n"
    output << "Album: #{@album}\n"
    output << "Track: #{@track}\n"
    output << "Notes: #{@notes}\n"
    
    output
  end
  
  def to_yaml
    the_song = {
      title: @title,
      artist: @artist,
      album: @album,
      track: @track,
      notes: @notes
    }
    
    YAML.dump(the_song)
  end
  
  def dump(filename=nil)
    filename ||= @title
    filename ||= 'unknown'
    
    File.write("#{filename}.yml", to_yaml)
  end
end
 
