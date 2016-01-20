# Virus Predictor

# Ryan Salnero & David Valencia ()
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
# require_relative 'state_data'




#population density is number of people per square mile as of 2012
#this data is updated every year with estimates from a 10 year census

# [[],[]]
# {key => {}}


# {"alabama" => {:pop_den => 85}}

STATE_DATA = {
  "Alabama" => {population_density: 94.65, population: 4822023},
  "Alaska" => {population_density: 1.1111, population: 731449},
  "Arizona" => {population_density: 57.05, population: 6553255},
  "Arkansas" => {population_density: 56.43, population: 2949131},
  "California" => {population_density: 244.2, population: 38041430},
  "Colorado" => {population_density: 49.33, population: 5187582},
  "Connecticut" => {population_density: 741.4, population: 3590347},
  "Delaware" => {population_density: 470.7, population: 917092},
  "Florida" => {population_density: 360.2, population: 19317568},
  "Georgia" => {population_density: 172.5, population: 9919945},
  "Hawaii" => {population_density: 216.8, population: 1392313},
  "Idaho" => {population_density: 19.15, population: 1595728},
  "Illinois" => {population_density: 231.9, population: 12875255},
  "Indiana" => {population_density: 182.5, population: 6537334},
  "Iowa" => {population_density: 54.81, population: 3074186},
  "Kansas" => {population_density: 35.09, population: 2885905},
  "Kentucky" => {population_density: 110.0, population: 4380415},
  "Louisiana" => {population_density: 105.0, population: 4601893},
  "Maine" => {population_density: 43.04, population: 1329192},
  "Maryland" => {population_density: 606.2, population: 5884563},
  "Massachusetts" => {population_density: 852.1, population: 6646144},
  "Michigan" => {population_density: 174.8, population: 9883360},
  "Minnesota" => {population_density: 67.14, population: 5379139},
  "Mississippi" => {population_density: 63.50, population: 2984926},
  "Missouri" => {population_density: 87.26, population: 6021988},
  "Montana" => {population_density: 6.86, population: 1005141},
  "Nebraska" => {population_density: 23.97, population: 1855525},
  "Nevada" => {population_density: 24.8, population: 2758931},
  "New Hampshire" => {population_density: 147.0, population: 1320718},
  "New Jersey" => {population_density: 1205, population: 8864590},
  "New Mexico" => {population_density: 17.16, population: 2085538},
  "New York" => {population_density: 415.3, population: 19570261},
  "North Carolina" => {population_density: 200.6, population: 9752073},
  "North Dakota" => {population_density: 9.92, population: 699628},
  "Ohio" => {population_density: 282.5, population: 11544225},
  "Oklahoma" => {population_density: 55.22, population: 3814820},
  "Oregon" => {population_density: 40.33, population: 3899353},
  "Pennsylvania" => {population_density: 285.3, population: 12763536},
  "Rhode Island" => {population_density: 1016, population: 1050292},
  "South Carolina" => {population_density: 157.1, population: 4723723},
  "South Dakota" => {population_density: 10.86, population: 833354},
  "Tennessee" => {population_density: 156.6, population: 6456243},
  "Texas" => {population_density: 98.07, population: 26059203},
  "Utah" => {population_density: 34.3, population: 2855287},
  "Vermont" => {population_density: 67.73, population: 626011},
  "Virginia" => {population_density: 207.3, population: 8185867},
  "Washington" => {population_density: 102.6, population: 6724540},
  "Washington,D.C."=> {population_density: 10357, population: 632323},
  "West Virginia" => {population_density: 77.06, population: 1855413},
  "Wisconsin" => {population_density: 105.2, population: 5726398},
  "Wyoming" => {population_density: 5.851, population: 576412}
}


# {"key" => value}
# Hash rocket syntax

# {key: value}
# Symbol syntax / rails 4 syntax.

# {key: value}
# {:key => value}

# my_hash[key] => value
# my_key[key:] # This will not work!
# :symbol




# local_variable
# - Visible in the scope its defined.

# $global_variable
# - visible everywhere

# CONSTANT_VARIABLE
# - also has global scope.
# - Its basically the same thing as a global variable, however, once you define it, you cannot redefine it.

# @instance_vairable
# - Visible only to a single instance of a class
# - Visible to all methods in the class.

# @@class_variable
# - Visisble to ALL instances of the SAME class.



#VirusPredictor the class they are setting up to use with the driver code

class VirusPredictor

  #takes an argument of the values stored in a constant variable and then stores them as a instance variable

  def initialize(state_of_origin, population_density, population)
    # Notice that arguements are initialized as local variables inside a method.
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #this is a method that returns the values from two methods that are set below.  Maybe to do it down low because private??

  def virus_effects
    predicted_deaths#(@population_density, @population, @state)
    speed_of_spread#(@population_density, @state)
  end


  #Puts into private
  private

  #it takes 3 arguments that were set up in intialize, and then puts them against some stastical factors in order to output a predicted death total based on population.  It's using floor to keep it as a whole number.  Prints a message to console.

  # Calculates the number of deaths based on popuation density.
  # The higher the denisty the higher the number of deaths.
  # Prints the number of deaths a state will have.

  def predicted_deaths#(population_density, population, state)

    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #This formula breaks down the speed from the population density and outputs it in months.  Prints message to console.

  def speed_of_spread#(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# 1. Take a piece of existing driver code and turn it into a template, by replacing the part that changes with a variable.
# 2. Create a loop that will loop through your states
# 3. Use your template inside the loop.
# HINT: The placeholder variables created by the loop will almost always match up with your template



# state
# person
# car

# state_name
# person_name



# STATE_DATA.each do |state_name, state_information|
#   #   any given time is called the current_iteration
#   current_state = VirusPredictor.new(state_name, STATE_DATA[state_name][:population_density], STATE_DATA[state_name][:population])
#   current_state.virus_effects
# end


STATE_DATA.each do |state_name, state_information|
  #   any given time is called the current_iteration
  current_state = VirusPredictor.new(state_name, state_information[:population_density], state_information[:population])
  current_state.virus_effects
end

# state_information = {pop_den: 20}
# STATE_DATA[state_name] = {pop_den: 20}


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects



# comments.each do |comment|
#   <div class='comments-container'>
#     <h1> comment.title </h1>
#     <p> comment.body </p>
#   </div>
# end





#=======================================================================
# Reflection Section

#What are the differences between the two different hash syntaxes shown in the state_data file?
## => is the hashrocket and using the symbol notation is shorthand.
# What does require_relative do? How is it different from require?
## It allows you to create a relative path off of the required path
# What are some ways to iterate through a hash?
## each loops, while loops, etc
# When refactoring virus_effects, what stood out to you about the variables, if anything?
## We did a good job of making sure to appropriate use local variables, $global variables, and @instance variables.
# What concept did you most solidify in this challenge?
## Best practices were solidified by our guide in this challenge. He gave us a way to think about naming variables, to think about what objects to put through the loops, and a way to think about using shorthand.