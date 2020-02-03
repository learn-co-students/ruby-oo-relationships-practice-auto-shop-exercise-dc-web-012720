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

  #Get a list of all cars that a mechanic services
  def cars
    Car.all.select do |car_obj|
      car_obj.mechanic == self
    end
  end

  #Get a list of all the car owners that go to a specific mechanic
  def car_owners
    self.cars.map do |car_obj|
      car_obj.car_owner
    end
  end

  #Get a list of the names of all car owners who go to a specific mechanic
  def car_owner_names
    self.car_owners.map do |car_owner_obj|
      car_owner_obj.name
    end
  end


end
