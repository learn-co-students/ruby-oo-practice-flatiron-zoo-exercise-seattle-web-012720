require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


#Test your code here
g1 = Animal.new("giraffe", 500, "lanky")
g2 = Animal.new("giraffe", 500, "spotty")
g3 = Animal.new("giraffe", 500, "awks")
g4 = Animal.new("giraffe", 500, "on-the-move")

l1 = Animal.new("lion", 200, "nala")
l2 = Animal.new("lion", 200, "simba")
l3 = Animal.new("lion", 200, "mufasa")
l4 = Animal.new("lion", 200, "scar")

sd_zoo = Zoo.new("San Diego Zoo", "San Diego")
chi_zoo = Zoo.new("Chicago Zoo", "Chicago")
sea_zoo = Zoo.new("Seattle Zoo", "Seattle")
sea_zoo2 = Zoo.new("Other Seattle Zoo", "Seattle")

g1.captured_by_zoo(sd_zoo)
g2.captured_by_zoo(sd_zoo)
g3.captured_by_zoo(chi_zoo)
g4.captured_by_zoo(sea_zoo)

l1.captured_by_zoo(sea_zoo)
l2.captured_by_zoo(sea_zoo2)
l3.captured_by_zoo(sea_zoo2)
l4.captured_by_zoo(chi_zoo)

binding.pry
puts "done"
