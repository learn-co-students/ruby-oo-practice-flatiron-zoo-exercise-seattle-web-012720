class Zoo

    attr_accessor :name, :location

    @@all = []

    def initialize(name, location)
        @name = name
        @location = location
        @@all << self
    end

    def self.all
        @@all
    end

    def self.all
        self.all.each do |zoo|
            zoo.name == self
        end
    end

    def animals
        Animal.all.select do |animal_object|
            animal_object.zoo == self
        end
    end

    def animal_species
        self.all.map {|animal_object| animal_object.species}
    end

    def find_by_species(animal_species)
        self.animals.select do |animal_object|
            animal_object.species == species
        end
    end

    def animal_nicknames
        self.animals.map do |animal_object|
            animal_object.nickname
        end
    end

    def self.find_by_location(location)
        location = Zoo.all.select{|zoo_object| zoo_object.location == lo}
        location.map{|zoo_object| zoo_object.name}
    
    end
end
