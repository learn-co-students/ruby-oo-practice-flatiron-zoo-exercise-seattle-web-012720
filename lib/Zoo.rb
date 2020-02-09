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

    def animals
        Animal.all.select{|a_obj| a_obj.zoo == self}
    end

    def animal_species
        self.animals.map {|a_obj| a_obj.species}
    end

    def find_by_species(species)
        self.animals.select{|a_obj| a_obj.species == species}
    end

    def animal_nicknames
        self.animals.map {|a_obj| a_obj.nickname}
    end

    def self.find_by_location(lo)
        location = Zoo.all.select{|z_obj| z_obj.location == lo}
        location.map{|l_obj| l_obj.name}
    end

end
