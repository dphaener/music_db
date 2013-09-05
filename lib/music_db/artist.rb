# The Artist class. Must be initialized with the artist name.
# Contains an attribute method which returns a hash containing all of
# the objects attributes.
class MusicDB::Artist
  # Includes the YAMLable module to allow file dumping.
  include YAMLable

  attr_accessor :name
  
  # Initialize the object with a given name
  # @param name [String] the name of the artist.
  def initialize(name)
    # Set the name attribute to the paramater name.
    @name = name
  end
  
  # Return the attributes of the object
  # @return [String] the attributes of the object.
  def attributes
    # Set and return the hash containing the object attributes.
    { name: @name }
  end
end
