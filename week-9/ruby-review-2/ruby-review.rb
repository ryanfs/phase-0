# As a video game player, I want to be able to create a new car and set its model and color so I can customize it in the video game.

# As a video game player, I need to be able to define a distance to drive so I can follow directions appropriately.

# As a video game player, I'd like to be able to see the speed I am traveling, so I can properly accelerate or decelerate.

# As a video game player, I want to be able to turn left or right so I can navigate a city and follow directions.

# As a video game player, I want to be able to accelerate and decelerate the car to a defined speed so I can drive following the rules of the road.

# As a video game player, I want to keep track of the total distance I have travelled, so I can get paid for mileage.

# As a video game player, I want to be able to stop the car so I can follow traffic signs and signals.

# As a video game player, I would like to see output reflecting the latest action of my car so I can see a play-by-play of the pizza delivery.


# Create a Car Class from User Stories


# I worked on this challenge [by myself, with: ].


# 2. Pseudocode



# 3. Initial Solution

class Car

  def initialize(color, model)
    @color = color
    @model = model
    @@travelled = 0
    puts "Welcome to your new " + @color + " " + @model
  end

  def distance(miles)
    @miles = miles
    @@travelled += miles
    puts "You plan to travel " + @miles.to_s + " miles"
  end

  def speed
    @speed = @set_speed
    puts "You are going " + @speed.to_s + " mph."
  end

  def turn(direction)
    @turn = direction
    puts "Turning " + @turn + "!"
  end

  def set_speed(mph)
    @set_speed = mph
    puts "You're now going " + @set_speed.to_s + " mph."
  end


  def odometer
    puts "You have traveled " + @@travelled.to_s + " miles so far."
  end

  def stop
    puts "Car is stopped."
    return set_speed(0)
  end

end


# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE

car = Car.new("blue", "jeep")
car.set_speed(25)
car.distance(0.25)
car.stop
car.turn("right")
car.set_speed(35)
car.distance(1.5)
car.speed
car.set_speed(15)
car.distance(0.25)
car.stop
car.turn("left")
car.set_speed(35)
car.distance(1.4)
car.stop
car.odometer

# 5. Reflection