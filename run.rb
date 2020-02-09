require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'

#(species, weight, nickname, zoo)
#Test your code here

z1 = Zoo.new("Lalaland", "Seattle")
z2 = Zoo.new("Lililand", "NewYork")
z3 = Zoo.new("Lololand", "SanFran")

a1 = Animal.new("Cat", 5, "Kim", z1)
a2 = Animal.new("Dog", 4, "A", z2)
a3 = Animal.new("Whale", 30, "B", z1)
a4 = Animal.new("Rat", 2, "C", z2)
a5 = Animal.new("Seaweed", 3, "B", z1)
a6 = Animal.new("Fox", 3, "C", z3)


binding.pry
puts "done"
