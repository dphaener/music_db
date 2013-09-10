require_relative('../lib/music_db/yamlable.rb')

describe YAMLable do
  
  class TestClass
    attr_accessor :attributes
    
    def initialize(attributes)
      @attributes = attributes
    end
  end
  
  before :each do
    @test_class = TestClass.new( { name: "Keller Williams" } )
    @test_class.extend(YAMLable)
  end
  
  describe "#to_yaml" do
    it "takes attributes and returns them in YAML format" do
      expect(@test_class.to_yaml).to eq("---\n:name: Keller Williams\n")
    end
  end
end
