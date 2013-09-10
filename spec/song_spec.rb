require_relative('../lib/music_db.rb')

describe MusicDB::Song do
  
  before :each do
    @song = MusicDB::Song.new(artist: "Keller Williams", title: "Rehab", 
        album: "Thief", track: 3, notes: "Cool song")
  end
      
  describe "#attributes" do
    it "returns a hash containing the artists name" do
      expect(@song.attributes).to eq(artist: "Keller Williams", title: "Rehab",
        album: "Thief", track: 3, notes: "Cool song")
    end
  end
  
  describe "#to_s" do
    it "returns a formatted string of all the attributes" do
      expect(@song.to_s).to eq("Title: Rehab\nArtist: Keller Williams\nAlbum: Thief\nTrack: 3\nNotes: Cool song\n")
    end
  end
end
