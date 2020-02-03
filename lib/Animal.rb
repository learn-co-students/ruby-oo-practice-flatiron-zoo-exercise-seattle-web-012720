class Animal
    @@all = []
    def self.all
        @@all
    end

    attr_accessor :weight, :zoo
    attr_reader :species, :nickname
    def initialize(species, weight, nickname)
        @species = species
        @weight = weight
        @nickname = nickname
        self.class.all << self
    end

    def captured_by_zoo(zoo)
        self.zoo = zoo
    end

    def self.find_by_species(species)
        all.select {|animal| animal.species == species}
    end
end
