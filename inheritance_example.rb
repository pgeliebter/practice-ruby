class Transport
  attr_reader :speed, :direction
  def initialize
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

class Car < Transport
  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Transport
  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new

car = Car.new

puts "Your current car speed is #{car.speed}"
car.accelerate
puts "Your current car speed is #{car.speed}"
car.honk_horn

puts "Your current bike speed is #{bike.speed}"
bike.accelerate
puts "Your current bike speed is #{bike.speed}"
bike.ring_bell