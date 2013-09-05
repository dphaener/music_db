require 'yaml'

# Module to include YAML formatting and file dumps
module YAMLable
  
  # Given a hash, dumps it to YAML format
  # @return [YAML] returns a hash in YAML format
  def to_yaml
    if self.respond_to? :attributes
      # We have attributes, so dump to YAML
      YAML.dump(attributes)
    else
      # There are no attributes, raise an exception
      raise "Hey, #{self.class} needs some attributes!"
    end
  end
  
  # Dumps a YAML hash to a file,
  # @param filename [String] the name of the file to dump to, 
  # if no paramater is given, it defaults to 'unknown.yml'
  def dump(filename=nil)
    # If filename is nil, assign 'unknown' to filename
    filename ||= 'unknown'
    # Write the file, calling the to_yaml method
    # @param filename [String] the name of the file to write
    # @param to_yaml [Method] the method that returns the YAML object
    File.write("#{filename}.yml", to_yaml)
  end
end
