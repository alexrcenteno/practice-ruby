class Vehicle
  def initialize
    @speed = 0
    @direction = 'north'

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

class Car < Vehicle
  def initialize(input_options)
    super
    @make = input_make
    @mode = input_model
  end
  
  def honk_horn
    puts "beeeeep!"
  end
end


class Bike < Vehicle 
  def initialize(input_options)
    @type = input_type
    @weight = input_weight
  end

  def ring_bell
    puts "ring ring"
  end
end


car = Car.new(make: "honda", model: "civic")
car.turn("east")
p car
car.honk_horn

bike = Bike.new(type: "mountain", weight: 25)
bike.turn("west")
p bike
bike.ring_bell
bike.honl_horn