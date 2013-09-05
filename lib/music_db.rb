# The basic musicDB module which includes a yamlable module, and song and
# artist classes.
module MusicDB; end

# Require the yamlable module to allow file dumps
require_relative 'music_db/yamlable'
# Require the Song class
require_relative 'music_db/song'
# Require the Artist class
require_relative 'music_db/artist'
