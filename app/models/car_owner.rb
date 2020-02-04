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

  def cars
    Car.all.select do |cars|
      cars.car_owner == self
    end
  end

  def mechanics
    self.cars.map do |cars|
      cars.mechanic
    end
  end

  def self.average
    arr = []
    Car.all.select do |cars|
      arr << cars
    end
    arr.count.to_f / CarOwner.all.count.to_f
  end

  def self.most_cars
    self.all.max_by do |car_owner|
      car_owner.cars.count
    end
  end


end
