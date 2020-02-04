require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Test Data
carl = CarOwner.new("Carl")
sunny = CarOwner.new("Sunny")
abod = CarOwner.new("Abod")
andrew = CarOwner.new("Andrew")

mario = Mechanic.new("Mario", "Exotic")
luigi = Mechanic.new("Luigi", "Classic")
tony = Mechanic.new("Tony", "Truck") 

car1 = Car.new("Ferrari", "F430", "Exotic", carl, mario)
car2 = Car.new("Ford", "Mustang", "Classic", carl, luigi)
car3 = Car.new("Chevy", "Camero", "Classic", carl, luigi)
car4 = Car.new("Ford", "F150", "Truck", andrew, tony)
car5 = Car.new("Ford", "F150", "Truck", abod, tony)
car6 = Car.new("Lamborghini", "Diablo", "Exotic", sunny, mario)


binding.pry
