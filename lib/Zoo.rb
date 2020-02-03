class Zoo
    @@all = []
    def self.all
        @@all
    end

    attr_reader :name, :location
    def initialize(name, location)
        @name = name
        @location = location
        self.class.all << self
    end

    def animals
        Animal.all.select {|animal| animal.zoo == self}
    end

    def animal_species
        animals.map {|animal| animal.species}.uniq
    end

    def find_by_species(species)
        animals.select {|animals| animals.species == species}
    end

    def animal_nicknames
        animals.map {|animal| animal.nickname}
    end

    def self.find_by_location(location)
        self.all.select {|zoo| zoo.location == location}
    end
end
