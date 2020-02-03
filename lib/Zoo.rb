class Zoo

    attr_reader :name, :location

    @@all = [] 

    def initialize(name, location)
        @name = name 
        @location = location 
        @animals = []
        @@all << self
    end

    def self.all 
        @@all 
    end

    def animals 
        @animals
    end

    def animals=(name) 
        @animals << name 
    end

    def animal_species 
        self.animals.map {|animal|
        animal.species }.uniq
    end

    def find_by_species(species)
        self.animals.select {|animal|
        animal.species == species }
    end

    def animal_nicknames(species)
        self.animals.map {|animal|
        animal.nickname }
    end

    def self.find_by_location(location)
        @@all.select {|zoo|
        zoo.location == location }
    end


end
