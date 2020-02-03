class Animal

    attr_reader :species, :nickname 
    attr_accessor :weight 

    @@all = []

    def initialize(species, weight, nickname)
        @species = species 
        @weight = weight 
        @nickname = nickname 
        @@all << self 
    end

    def self.all 
        @@all 
    end

    def zoo 
        Zoo.all.find {|zoo| zoo.animals.include?(self) } 
    end

    def zoo=(name) 
        name.animals=(self) 
    end
    
    def self.species(species) 
        @@all.select {|animal| animal.species == species }
    end

end
