class Car

  attr_reader :make, :model, :classification, :car_owner, :mechanic
  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @mechanic = mechanic
    @car_owner = car_owner
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end

  def self.all
    @@all
  end

  #Get a list of all car classifications
  def self.classifications
    self.all.map do |car_obj|
      car_obj.classification
    end.uniq
  end
 
  #Get a list of mechanics that have an expertise that matches the car classification
  def self.mechanic_match(classification)
    self.all.select do |car_obj|
      car_obj.classification == classification
    end.map {|car_obj| car_obj.mechanic}.uniq
  end

end
