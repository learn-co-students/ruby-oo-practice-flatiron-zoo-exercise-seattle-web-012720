require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


wpz = Zoo.new("Woodland Park Zoo", "WA")
cmz = Zoo.new("Cougar Mountain Zoo", "WA")
sbz = Zoo.new("Santa Barbara Zoo", "CA")

cmz.new_animal("Cougar", 160, "Cuzco")
cmz.new_animal("Cougar", 175, "Cassie")

wpz.new_animal("Wolf", 130, "Waldo")
wpz.new_animal("Wolf", 136, "Wendy")
wpz.new_animal("Wolf", 141, "Wanda")
wpz.new_animal("Moose", 1400, "Martin")
wpz.new_animal("Moose", 750, "Molly")
wpz.new_animal("Lion", 350, "Nalla")
wpz.new_animal("Lion", 500, "Simba")
wpz.new_animal("Crocodile", 500, "Carlos")
wpz.new_animal("Tiger", 360, "Tilly")
wpz.new_animal("Tiger", 446, "Thomas")

sbz.new_animal("Otter", 23,"Otto")
sbz.new_animal("Otter", 7, "Ozzy")
sbz.new_animal("Otter", 7, "Olley")
sbz.new_animal("Otter", 9, "Olive")
sbz.new_animal("Lemur", 5, "Lizzy")
sbz.new_animal("Lemur", 5, "Larz")
sbz.new_animal("Common Raven", 3, "Poe")
sbz.new_animal("Opssum", 6, "Rusty")
sbz.new_animal("Giraffe", 1800, "Gemima")
sbz.new_animal("Giraffe", 1800, "Gerald")
sbz.new_animal("Giraffe", 1800, "Gary")

binding.pry
puts "done"
