require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

chris = CarOwner.new("Chris")
eileen = CarOwner.new("Eileen")
paul = CarOwner.new("Paul")

audrey = Mechanic.new("Audrey", "antique")
lauren = Mechanic.new("Lauren", "junker")
matt = Mechanic.new("Matt", "junker")

car1 = Car.new("Toyota", "Corolla", "antique", chris, audrey)
car2 = Car.new("Honda", "Civic", "antique", eileen, audrey)
car3 = Car.new("Toyota", "Rav4", "junker", paul, lauren)
car4 = Car.new("Chevy", "coolio", "junker", chris, matt)
car5 = Car.new("Ford", "trucky", "junker", eileen, lauren)




binding.pry
