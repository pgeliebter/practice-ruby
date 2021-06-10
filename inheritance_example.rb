class Vehicle
  attr_reader :speed, :direction
  def initialize(input_options)
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    puts "Speeding up!"
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  attr_accessor :make, :model, :year, :color
  def initialize(input_options)
    super
    @make = input_options[:make]
    @model = input_options[:model]
    @year = input_options[:year]
    @color = input_options[:color]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Vehicle
  attr_accessor :brand, :type
  def initialize(input_options)
    super
    @brand = input_options[:brand]
    @type = input_options[:type]
  end
  def ring_bell
    puts "Ring ring!"
  end
end


car = Car.new(make: "toyota", model: "corolla", year: 2016, color: "black")

bike = Bike.new(brand: "trek", type: "mountain bike")

puts car.make, car.model, car.year, car.color

puts "Your current car speed is #{car.speed}"
car.accelerate
puts "Your current car speed is #{car.speed}"
car.honk_horn
puts ""
puts "Your current bike speed is #{bike.speed}"
bike.accelerate
puts "Your current bike speed is #{bike.speed}"
bike.ring_bell