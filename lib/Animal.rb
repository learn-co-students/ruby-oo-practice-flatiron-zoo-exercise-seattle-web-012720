class Animal

    attr_accessor :weight, :zoo
    attr_reader :nickname, :species

    @@all = []

    def initialize(species, weight, nickname)
        @species = species
        @weight = weight
        @nickname = nickname
        save
    end

    def self.find_by_species(species)
        @@all.select {|a| a.species == species}
    end

    def save
        @@all << self 
    end

    def self.all
        @@all
    end
end
