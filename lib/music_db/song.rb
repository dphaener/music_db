class MusicDB::Song
  include YAMLable
  
  def initialize(**options)
    @title = options[:title]
    @artist = options[:artist]
    @album = options[:album]
    @track = options[:track]
    @notes = options[:notes]
  end
  
  attr_accessor :title, :artist, :album, :track, :notes
  
  def to_s
    output = "Title: #{@title}\n"
    output << "Artist: #{@artist}\n"
    output << "Album: #{@album}\n"
    output << "Track: #{@track}\n"
    output << "Notes: #{@notes}\n"
    
    output
  end
  
  def attributes
    {
      title: @title,
      artist: @artist,
      album: @album,
      track: @track,
      notes: @notes
    }
  end
end
 
