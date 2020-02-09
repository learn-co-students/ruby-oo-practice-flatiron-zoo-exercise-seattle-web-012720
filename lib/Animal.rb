class Animal
    attr_accessor :species, :nickname, :zoo
    attr_reader :numerical_weight

    @@all = []

    def initialize(species,numerical_weight, nickname, zoo)
        @species = species
        @numerical_weight = numerical_weight
        @nickname = nickname
        @zoo = zoo
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(species)
        Animal.all.select do |animal_object|
            animal_object.species == species
        end
    end

end
