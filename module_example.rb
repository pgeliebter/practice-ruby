module Vehicable
  attr_reader :speed, :direction

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end

  def initialize
    @speed = 0
    @direction = "north"
  end
end

class Car
  include Vehicable

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike
  include Vehicable

  def ring_bell
    puts "Ring ring!"
  end
end

c1 = Car.new
puts c1.accelerate
puts c1.turn("east")
puts c1.speed

b1 = Bike.new
puts b1.speed
puts b1.direction
puts b1.turn("east")
