# The Song class. Must be initialized with at least a song and artist name.
# Contains a custom to_s method to prettify our object output.
# Also contains a attribute method which returns a hash containing all of
# the objects attributes.
class MusicDB::Song
  include YAMLable
  
  # Initialize the object with the given attributes
  # @param title [String] the name of the song.
  # @param artist [String] the name of the artist.
  # @param album [String] the name of the album.
  # @param track [Integer] the track number.
  # @param notes [String] any notes worth mentioning.
  def initialize(title: title, artist: artist, album: nil, track: nil, notes: nil)
    # Initialize the objects attributes with the given parameters.
    @title = options[:title]
    @artist = options[:artist]
    @album = options[:album]
    @track = options[:track]
    @notes = options[:notes]
  end
  
  attr_accessor :title, :artist, :album, :track, :notes
  
  # Our customized to_s method to output the object in a pretty format.
  # @return [String] the attributes of the method formatted.
  def to_s
    # Define a string called output and add all the attributes from
    # the object, each on a new line.
    output = "Title: #{@title}\n"
    output << "Artist: #{@artist}\n"
    output << "Album: #{@album}\n"
    output << "Track: #{@track}\n"
    output << "Notes: #{@notes}\n"

    # Return the string
    output
  end
  
  # Return the attributes of the object
  # @return [Hash] the attributes of the object.
  def attributes
    # Define, and return the hash containing all of the attributes.
    {
      title: @title,
      artist: @artist,
      album: @album,
      track: @track,
      notes: @notes
    }
  end
end
 
