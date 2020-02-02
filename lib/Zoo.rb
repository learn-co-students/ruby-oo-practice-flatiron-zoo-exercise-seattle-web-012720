class Zoo
    attr_accessor :name
    attr_reader :location

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        save
    end

    def new_animal(species, weight, nickname)
        new = Animal.new(species, weight, nickname)
        new.zoo = self
    end

    def animals
        Animal.all.select {|a| a.zoo == self}
    end

    def animal_species
        animals.map {|a| a.species}.uniq
    end

    def find_by_species(species)
        animals.select {|a| a.species == species}
    end

    def animal_nicknames
        animals.map {|a| a.nickname}
    end

    def self.find_by_location(location)
        @@all.select {|z| z.location == location}
    end

    def save
        @@all << self 
    end

    def self.all 
        @@all
    end
end
