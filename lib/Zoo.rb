class Zoo
  attr_reader :location, :name
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
    Animal.all.select { |animal| animal.zoo == self }
  end

  def animal_species
    x = self.animals.map { |animal| animal.species }
    x.uniq
  end

  def find_by_species(species)
    self.animals.select { |animal| animal.species == self }
  end

  def animal_nicknames
    x = self.animals.map { |animal| animal.nickname }
    x.uniq
  end

  def self.find_by_location(location)
    self.all.select { |zoo| zoo.location == location }
  end
end
