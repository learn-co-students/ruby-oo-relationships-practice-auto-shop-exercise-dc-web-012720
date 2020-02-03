class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  #Get a list of all the cars that a specific owner has
  def cars
    Car.all.select do |car_obj|
      car_obj.car_owner == self
    end
  end
  
  #Get a list of all the mechanics that a specific owner goes to
  def mechanics
    self.cars.map do |car_obj|
      car_obj.mechanic
    end
  end

  #Get the average amount of cars owned for all owners
  def self.average_number_cars
    Car.all.count / self.all.count.to_f
  end

end
