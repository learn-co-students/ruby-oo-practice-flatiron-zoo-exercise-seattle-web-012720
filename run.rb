require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
 
z1 = Zoo.new("C1", "Uberlandia")
z2 = Zoo.new("C2", "Uberaba")
z3 = Zoo.new("C3", "Araguari")


a1 = Animal.new("zebra", "200", "Zinha", "C1")
a2 = Animal.new("cabra", "100", "Biba", "C2")
a3 = Animal.new("egua", "300", "Pinha", "C3")
a4 = Animal.new("giraffa", "500", "Pota", "C2")

binding.pry
puts "done"
