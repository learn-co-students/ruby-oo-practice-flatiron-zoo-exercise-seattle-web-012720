class Animal
    attr_accessor :species, :nickname, :zoo
    attr_reader :weight
    @@all = []

    def initialize(species, weight, nickname, zoo)
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = zoo
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_species(species)
        Animal.all.select{|a_obj| a_obj.species == species}
    end

end
