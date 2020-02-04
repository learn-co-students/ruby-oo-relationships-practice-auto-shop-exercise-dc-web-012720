class Mechanic

  attr_reader :name, :specialty
  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def self.all
  @@all
end

def cars
  Car.all.select do |cars|
    cars.mechanic == self
  end
end 

def owners
  self.cars.map do |cars|
    cars.car_owner
  end
end



end
