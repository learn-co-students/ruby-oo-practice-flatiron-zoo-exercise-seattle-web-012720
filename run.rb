require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require "pry"

#Test your code here
National = Zoo.new("National Zoo", "DC")
Pondicherry = Zoo.new("Pondicherry", "India")
San_Diego = Zoo.new("San Diego Zoo", "San Diego")

Richard_Parker = Animal.new("tiger", 320, "Richdard Parker")
Mother = Animal.new("gorilla", 240, "Mary")
Apollo = Animal.new("gerbil", 3, "Apollo")
Hades = Animal.new("gerbil", 1.4, "Hades")

binding.pry
puts "done"
