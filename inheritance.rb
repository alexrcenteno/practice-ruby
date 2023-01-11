class Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
    @fuel = 'premium'
    @make = 'audi'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

 

  def turn(new_direction)
    @direction = new_direction
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class car < vehile
  def honk_horn
    puts "beeeeep!"
  end
end

class Bike < Car
  def ring_bell
    puts "ring ring"
  end
end


car = Car.new()
car.turn("east")
p car
car.honk_horn

bike = Bike.new
bike.turn("west")
p bike
bike.ring_bell
bike.honl_horn