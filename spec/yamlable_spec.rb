require_relative('../lib/music_db/yamlable.rb')

describe YAMLable do
  
  class TestClass
    attr_accessor :attributes
    
    def initialize(attributes)
      @attributes = attributes
    end
  end
  
  class EmptyClass
  end
  
  describe "#to_yaml" do
    context "Has attributes" do
      before do
        @test_class = TestClass.new( { name: "Keller Williams" } )
        @test_class.extend(YAMLable)
      end
      it "takes attributes and returns them in YAML format" do
        expect(@test_class.to_yaml).to eq("---\n:name: Keller Williams\n")
      end
    end
    
    context "Doesn't have attributes" do
      before do
        @empty_class = EmptyClass.new
        @empty_class.extend(YAMLable)
      end
      it "raises an exception when no attributes are passed" do
        expect { @empty_class.to_yaml }.to raise_error(RuntimeError, "Hey, #{@empty_class.class} needs some attributes!")
      end
    end
  end
  
  describe "#dump" do
    
    before do
      @test_class = TestClass.new( { name: "Keller Williams" } )
      @test_class.extend(YAMLable)
      @file = double(@test_class.dump)
      allow(@file).to receive(:write)
    end
    
    it "writes to a file with a yaml object" do 
      @file.should_receive(:write).with("unkown.yml", "---\n:name: Keller Williams\n")
    end
  end
  
end
