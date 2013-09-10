require_relative('../lib/music_db.rb')

describe MusicDB::Artist do
  
  describe "#attributes" do
    before do
      @artist = MusicDB::Artist.new "Keller Williams"
    end
    
    it "returns a hash containing the artists name" do
      expect(@artist.attributes).to eq(name: "Keller Williams")
    end
  end
end
